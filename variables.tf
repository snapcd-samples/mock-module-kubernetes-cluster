variable "cluster_name" {
  description = "Name for the Kubernetes cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the cluster will be deployed"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID for the cluster"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for the cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.28"
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
  default     = "m5.large"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 3
}