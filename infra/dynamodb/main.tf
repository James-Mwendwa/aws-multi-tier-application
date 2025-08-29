resource "aws_dynamodb_table" "db-table" {
  name = var.table_name
  billing_mode = var.billing_mode
  hash_key = var.partition_key_name

  attribute {
    name = var.partition_key_name
    type = var.partition_key_type
  }

  server_side_encryption {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table"
    Environment = "production"
  }
}