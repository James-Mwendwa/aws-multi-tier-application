variable "table_name" {
  description = "dynamodb table name"
  type = string
}

variable "partition_key_name" {
  description = "hash key name for the storage"
  type = string
  default = "PK"
}

variable "partition_key_type" {
  description = "partition type"
  type = string
  default = "S"
}

variable "billing_mode" {
  description = "capacity mode for the workload"
  type = string
  default = "PAY_PER_REQUEST"
}

variable "create_kms_key" {
    description = "use aws managed key"
    type = bool
    default = false  
}
