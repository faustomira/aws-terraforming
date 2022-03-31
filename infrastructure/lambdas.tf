# aws_lambda_functions:
resource "aws_lambda_function" "lambda_function" {
    for_each = toset(var.repository_list)

    function_name                  = each.key
    role                           = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/fsm-lambdas"
    package_type                   = "Image"
    image_uri                      = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.region}.amazonaws.com/${each.key}:latest"
    memory_size                    = each.key == "differentlambda" || each.key == "anotherlambda" ? 3096 : 512
    timeout                        = each.key == "differentlambda" || each.key == "anotherlambda" ? 900 : 300
   
    tracing_config {
        mode = "PassThrough"
    }

    # The following variables must be set in local environment shell. e.g  $ export TF_VAR_BINDS_USER=<your binds user>
    environment {
        variables = {
            SOME_ENV_VARIABLE  =   "${var.SOME_ENV_VARIABLE}"
            REGION  =   "${var.region}"
        }
    }

    depends_on  =   [
        aws_cloudwatch_event_rule.rule,
        docker_registry_image.container,
        aws_iam_role.role_lambdas,
    ]
}

resource "aws_lambda_function_event_invoke_config" "event_config" {
    for_each = toset(var.repository_list)
    
    function_name                = each.key
    maximum_retry_attempts       = 0

    depends_on  =   [
        aws_lambda_function.lambda_function,
    ]
}