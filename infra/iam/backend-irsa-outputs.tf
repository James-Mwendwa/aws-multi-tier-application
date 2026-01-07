output "backend_irsa_role_arn" {
  description = "IAM role ARN to annotate the backend ServiceAccount (IRSA role)"
  value       = aws_iam_role.backend_irsa_role.arn
}

output "backend_irsa_role_name" {
  value = aws_iam_role.backend_irsa_role.name
}
