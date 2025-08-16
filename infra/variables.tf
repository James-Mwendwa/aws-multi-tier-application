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

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "value for private subnet cidr"
  type        = list(string)
}

variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = list(string)

}