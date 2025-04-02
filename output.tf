output "eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.eks.id
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_node_group_id" {
  description = "The ID of the EKS node group"
  value       = aws_eks_node_group.eks_nodes.id
}

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.eks_vpc.id
}

output "security_group_id" {
  description = "The ID of the security group assigned to EKS"
  value       = aws_security_group.eks_sg.id
}

output "kms_key_arn" {
  description = "KMS key ARN for EKS secrets encryption"
  value       = aws_kms_key.eks_kms.arn
}
