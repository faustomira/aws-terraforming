# aws_iam_role.role_lambdas:
resource "aws_iam_role" "role_lambdas" {
    assume_role_policy    = jsonencode(
        {
            Statement = [
                {
                    Action    = "sts:AssumeRole"
                    Effect    = "Allow"
                    Principal = {
                        Service = "lambda.amazonaws.com"
                    }
                },
            ]
            Version   = "2012-10-17"
        }
    )
    force_detach_policies = false
    managed_policy_arns   = [
        "arn:aws:iam::aws:policy/AmazonS3FullAccess",
        "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
    ]
    max_session_duration  = 3600
    name                  = "fsm-lambdas"
    path                  = "/"

    inline_policy {
        name   = "AWSLambdaS3GetObject"
        policy = jsonencode(
            {
                "Version": "2012-10-17",
                "Statement": [
                    {
                        "Sid": "VisualEditor0",
                        "Effect": "Allow",
                        "Action": "s3:*",
                        "Resource": "*"
                    }
                ]
            }
        )
    }
    inline_policy {
        name   = "LambdaHandleDynamoDB"
        policy = jsonencode(
            {
                Statement = [
                    {
                        Action   = [
                            "dynamodb:PutItem",
                            "dynamodb:DeleteItem",
                            "dynamodb:GetItem",
                            "dynamodb:Scan",
                            "dynamodb:Query",
                            "dynamodb:UpdateItem",
                            "dynamodb:UpdateTable",
							"dynamodb:BatchWriteItem",
                        ]
                        Effect   = "Allow"
                        Resource = [
                            "arn:aws:dynamodb:${var.region}:${data.aws_caller_identity.current.account_id}:table/maintopic",
                        ]
                        Sid      = "VisualEditor0"
                    },
                ]
                Version   = "2012-10-17"
            }
        )
    }
    inline_policy {
        name    =   "AWSLambdaBasicExecutionRole"
        policy  =   jsonencode(
            {
                "Version": "2012-10-17",
                "Statement": [
                    {
                        "Effect": "Allow",
                        "Action": [
                            "logs:CreateLogGroup",
                            "logs:CreateLogStream",
                            "logs:PutLogEvents"
                        ],
                        "Resource": "*"
                    }
                ]
            }
        )
    }
}

# aws_cloudwatch_event_rule.rule_simplelambdatest:
resource "aws_cloudwatch_event_rule" "rule" {
    for_each = toset(var.repository_list)

    event_bus_name      = "default"
    is_enabled          = each.key == "simplelambdatest" ? false : true
    name                = "trigger.${each.key}"
    schedule_expression = each.key == "simplelambdatest" ? "rate(60 days)" : "rate(30 minutes)"
}

# aws_cloudwatch_event_target.schedule_simplelambdatest:
resource "aws_cloudwatch_event_target" "schedule" {
    for_each = toset(var.repository_list)

    arn            = "arn:aws:lambda:${var.region}:${data.aws_caller_identity.current.account_id}:function:${each.key}"
    event_bus_name = "default"
    rule           = "trigger.${each.key}"
    target_id      = "schedule.${each.key}"
    
    depends_on  =   [
        aws_lambda_function.lambda_function,
        aws_cloudwatch_event_rule.rule,
    ]
}

# aws_lambda_permission.trigger_simplelambdatest:
resource "aws_lambda_permission" "trigger" {
    for_each = toset(var.repository_list)

    action        = "lambda:InvokeFunction"
    function_name = each.key
    principal     = "events.amazonaws.com"
    statement_id  = "AllowExecutionFromCloudWatch"
    source_arn    = "arn:aws:events:${var.region}:${data.aws_caller_identity.current.account_id}:rule/trigger.${each.key}"
    
    depends_on  =   [
        aws_lambda_function.lambda_function,
        aws_cloudwatch_event_rule.rule,
    ]
}

# aws_iam_role.S3Reader:
resource "aws_iam_role" "S3Reader" {
    name               = "S3Reader"
    path               = "/"
    assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "S3Reader-policy-attachment" {
    role = aws_iam_role.S3Reader.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}