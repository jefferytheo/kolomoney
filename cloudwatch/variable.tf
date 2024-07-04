variable "sns_topic_name" {
  description = "Name of the SNS topic for alerts"
  type        = string
  default     = "alerts-topic"
}

variable "lambda_threshold" {
  description = "Threshold for Lambda invocation errors"
  type        = number
  default     = 1
}

variable "rds_cpu_threshold" {
  description = "Threshold for RDS CPU utilization"
  type        = number
  default     = 80
}
