variable "aws_region" {
  description = "aws region"
  type        = string
}

variable "web_app_repo_name" {
  description = "Name of the ECR repository for the web application"
  type        = string
}

variable "backend_app_repo_name" {
  description = "Name of the ECR repository for the backend application"
  type        = string

}