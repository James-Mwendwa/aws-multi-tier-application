output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.eks-cp.name
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.eks-cp.id
}

output "eks_cluster_arn" {
  description = "The ARN of the EKS cluster"
  value       = aws_eks_cluster.eks-cp.arn
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.eks-cp.endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "The base64 encoded certificate data required to communicate with the cluster"
  value       = aws_eks_cluster.eks-cp.certificate_authority[0].data
}

output "eks_cluster_role_arn" {
  description = "IAM Role ARN for the EKS control plane"
  value       = aws_iam_role.eks-cluster-role.arn
}

output "eks_node_role_arn" {
  description = "IAM Role ARN for EKS worker nodes"
  value       = aws_iam_role.eks_node_role.arn
}

output "eks_node_group_name" {
  description = "The name of the EKS Node Group"
  value       = aws_eks_node_group.example.node_group_name
}

output "eks_node_group_arn" {
  description = "The ARN of the EKS Node Group"
  value       = aws_eks_node_group.example.arn
}

output "eks_node_group_status" {
  description = "The current status of the EKS Node Group"
  value       = aws_eks_node_group.example.status
}

output "eks_node_group_scaling_config" {
  description = "Scaling configuration of the EKS Node Group"
  value       = aws_eks_node_group.example.scaling_config
}

output "ebs_csi_driver_addon_status" {
  description = "Status of the EBS CSI driver add-on"
  value       = aws_eks_addon.ebs_csi_driver.status
}

output "ebs_csi_driver_addon_version" {
  description = "Version of the EBS CSI driver add-on"
  value       = aws_eks_addon.ebs_csi_driver.addon_version
}
