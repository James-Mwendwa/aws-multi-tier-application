variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "backend_namespace" {
  description = "Kubernetes namespace for backend"
  type        = string
  default     = "backend-ns"
}

variable "backend_serviceaccount_name" {
  description = "Kubernetes ServiceAccount name for backend"
  type        = string
  default     = "backend-sa"
}

variable "secrets_arn" {
  description = "ARN or ARN pattern for Secrets Manager secret(s) the backend needs (narrow scope). e.g. arn:aws:secretsmanager:us-east-1:123456789012:secret:backend/db-credentials-*"
  type        = string
}

variable "enable_dynamodb" {
  description = "Whether to include DynamoDB permissions in the IAM policy"
  type        = bool
  default     = false
}

variable "dynamodb_table_arn" {
  description = "Optional DynamoDB table ARN if enable_dynamodb is true"
  type        = string
  default     = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
