variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "github_access_token" {
  description = "GitHub access token for Amplify"
  type        = string
  sensitive   = true
}

variable "github_oauth_token" {
  description = "GitHub OAuth token for Amplify"
  type        = string
  sensitive   = true
}
