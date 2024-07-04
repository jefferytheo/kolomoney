variable "github_oauth_token" {
  description = "OAuth token for GitHub"
  type        = string
}

variable "github_access_token" {
  description = "Access token for GitHub"
  type        = string
}

variable "iam_role_arn" {
  description = "ARN of the IAM role for Amplify"
  type        = string
}
