variable "aws_region" {
  description = "AWS region where EKS is deployed"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"  # Default name for simplicity
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "eks-node-group"  # Default name for node group
}

variable "instance_types" {
  description = "Instance types for the worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "allowed_ingress_cidrs" {
  description = "List of allowed CIDR blocks for security group ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Allow all traffic by default (can be restricted later)
}

# Added variables for Helm & kubectl installation
variable "install_kubectl" {
  description = "Whether to install kubectl"
  type        = bool
  default     = true
}

variable "install_helm" {
  description = "Whether to install Helm"
  type        = bool
  default     = true
}
