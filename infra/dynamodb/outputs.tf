output "table_name" {
  value = aws_dynamodb_table.db-table.name
}

output "aws_dynamodb_table_arn" {
  value = aws_dynamodb_table.db-table.arn
}

output "aws_dynamodb_table_id" {
  value = aws_dynamodb_table.db-table.id
}

output "aws_dynamodb_table_billing_mode" {
  value = aws_dynamodb_table.db-table.billing_mode
}