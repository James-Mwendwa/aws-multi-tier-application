output "backend_ecr_repository_url" {
  description = "The URL of the backend ECR repository"
  value       = aws_ecr_repository.backend-app_repo.repository_url
}

output "web_ecr_repository_url" {
  description = "The URL of the web ECR repository"
  value       = aws_ecr_repository.web-app_repo.repository_url
}