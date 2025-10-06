variable "cluster_name" {
  description = "eks cluster name"
  type = string
}

variable "kubernetes_version" {
  description = "kubernetes version for the cluster"
  type = string
  default = "1.32"
}

variable "vpc_id" {
  description = "where eks will be deployed"
  type = string
}

variable "private_subnet_ids" {
  description = "private subnet for worker nodes"
  type = list(string)
}


variable "public_subnet_ids" {
  description = "public subnet for loadbalancers"
  type = list(string)
}

variable "node_group_name" {
  type        = string
  description = "Name for the self-managed node group"
  default     = "worker nodes"
}

variable "node_instance_types" {
  type        = list(string)
  description = "EC2 instance types for worker nodes"
  default     = ["t3.micro"]
}

variable "node_desired_capacity" {
  type        = number
  description = "Desired number of nodes in managed node group"
  default     = 3
}

variable "node_min_size" {
  type        = number
  description = "Minimum number of nodes in managed node group"
  default     = 2
}

variable "node_max_size" {
  type        = number
  description = "Maximum number of nodes in managed node group"
  default     = 5
}

variable  "max_pod_unavailable" {
  type = number
  description = "maximum number of pods unavailable at a time"
  default = 0
}