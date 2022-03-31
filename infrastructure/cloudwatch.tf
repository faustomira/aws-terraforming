resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-AlarmHigh-27477f8c-5af3-439c-a26f-733b013ef867" {
  alarm_name                = "TargetTracking-table/maintopic-AlarmHigh-27477f8c-5af3-439c-a26f-733b013ef867"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "42"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:a6086129-5659-436e-bf79-4c0ae8543d57:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/faa03142-3935-4cf2-a251-e32fd6878ae4."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-AlarmHigh-9f6586a9-ad7b-4837-a998-b1d465ec0a0f" {
  alarm_name                = "TargetTracking-table-maintopic-AlarmHigh-9f6586a9-ad7b-4837-a998-b1d465ec0a0f"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "ConsumedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "42"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:a6086129-5659-436e-bf79-4c0ae8543d57:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/faa03142-3935-4cf2-a251-e32fd6878ae4."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-AlarmLow-037827de-9d27-494f-8a1e-1c3accf3c5c2" {
  alarm_name                = "TargetTracking-table-maintopic-AlarmLow-037827de-9d27-494f-8a1e-1c3accf3c5c2"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "15"
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "30"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:a6086129-5659-436e-bf79-4c0ae8543d57:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/faa03142-3935-4cf2-a251-e32fd6878ae4."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-AlarmLow-0a7306e5-b824-4b9d-8a7f-d1198051ad51" {
  alarm_name                = "TargetTracking-table-maintopic-AlarmLow-0a7306e5-b824-4b9d-8a7f-d1198051ad51"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "15"
  metric_name               = "ConsumedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "30"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-ProvisionedCapacityHigh-6ab98fb7-8709-4bad-9797-949e8bcd8758" {
  alarm_name                = "TargetTracking-table-maintopic-ProvisionedCapacityHigh-6ab98fb7-8709-4bad-9797-949e8bcd8758"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-ProvisionedCapacityHigh-dc28df38-34a9-40e1-97ba-c6f028948683" {
  alarm_name                = "TargetTracking-table-maintopic-ProvisionedCapacityHigh-dc28df38-34a9-40e1-97ba-c6f028948683"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-ProvisionedCapacityLow-55c29cf7-cffa-40ef-b91d-79dfe0701b95" {
  alarm_name                = "TargetTracking-table-maintopic-ProvisionedCapacityLow-55c29cf7-cffa-40ef-b91d-79dfe0701b95"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-maintopic-ProvisionedCapacityLow-85c32467-2b5b-41e4-a9f3-009376ecf6e4" {
  alarm_name                = "TargetTracking-table-maintopic-ProvisionedCapacityLow-85c32467-2b5b-41e4-a9f3-009376ecf6e4"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-AlarmHigh-1d4a4126-f0c1-4e93-a306-658c862a3b60" {
  alarm_name                = "TargetTracking-table-sentiment-AlarmHigh-1d4a4126-f0c1-4e93-a306-658c862a3b60"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "42"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-AlarmHigh-39540f51-484c-4eb9-9c97-75d1b06756b4" {
  alarm_name                = "TargetTracking-table-sentiment-AlarmHigh-39540f51-484c-4eb9-9c97-75d1b06756b4"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "ConsumedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "42"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:a6086129-5659-436e-bf79-4c0ae8543d57:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/faa03142-3935-4cf2-a251-e32fd6878ae4."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-AlarmLow-74d7b903-4574-4b36-8ad0-3aa0f70c4b03" {
  alarm_name                = "TargetTracking-table-sentiment-AlarmLow-74d7b903-4574-4b36-8ad0-3aa0f70c4b03"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "15"
  metric_name               = "ConsumedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "30"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:a6086129-5659-436e-bf79-4c0ae8543d57:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/faa03142-3935-4cf2-a251-e32fd6878ae4."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-AlarmLow-85c4f577-76b3-44ff-bfd4-009dd7527b63" {
  alarm_name                = "TargetTracking-table-sentiment-AlarmLow-85c4f577-76b3-44ff-bfd4-009dd7527b63"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "15"
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "60"
  statistic                 = "Sum"
  threshold                 = "30"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-ProvisionedCapacityHigh-a9e2ffe8-8ef1-43f2-97c0-43d8639249dc" {
  alarm_name                = "TargetTracking-table-sentiment-ProvisionedCapacityHigh-a9e2ffe8-8ef1-43f2-97c0-43d8639249dc"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-ProvisionedCapacityHigh-c04a6bec-5851-4948-89c4-7aa7b018874c" {
  alarm_name                = "TargetTracking-table-sentiment-ProvisionedCapacityHigh-c04a6bec-5851-4948-89c4-7aa7b018874c"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-ProvisionedCapacityLow-a40ca484-9f4a-48c6-bfcc-85623e28d8c6" {
  alarm_name                = "TargetTracking-table-sentiment-ProvisionedCapacityLow-a40ca484-9f4a-48c6-bfcc-85623e28d8c6"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-table-sentiment-ProvisionedCapacityLow-ebf544d2-9541-492e-8c58-da7a9cad2cdf" {
  alarm_name                = "TargetTracking-table-sentiment-ProvisionedCapacityLow-ebf544d2-9541-492e-8c58-da7a9cad2cdf"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "3"
  metric_name               = "ProvisionedWriteCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:${var.region}:${data.aws_caller_identity.current.account_id}:scalingPolicy:79d455a5-0445-44d8-b4f9-638ad9f0ca7a:resource/dynamodb/table/maintopic:policyName/$maintopic-scaling-policy:createdBy/6a7f3da3-27d7-4291-bede-ab9abc8e6ebd."
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "get-binds-data" {
  alarm_name                = "get-binds-data"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "1"
  metric_name               = "Invocations"
  namespace                 = "AWS/DynamoDB"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "10.0"
  alarm_description         = ""
  insufficient_data_actions = []
}
