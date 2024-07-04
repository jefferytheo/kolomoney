output "sns_topic_arn" {
  value = aws_sns_topic.alerts.arn
}

output "lambda_errors_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.lambda_errors.arn
}

output "rds_cpu_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.rds_cpu.arn
}
