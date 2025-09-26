output "cluster_id" {
  description = "ID of the Kubernetes cluster"
  value       = random_uuid.cluster_id.result
}

output "cluster_endpoint" {
  description = "Kubernetes cluster endpoint"
  value       = "https://kubernetes-${random_uuid.cluster_id.result}.amazonaws.com"
}

output "node_group_id" {
  description = "ID of the node group"
  value       = random_uuid.node_group_id.result
}

output "cluster_kubeconfig" {
  description = "Kubeconfig for connecting to the cluster"
  value       = random_string.kubeconfig.result
  sensitive = true
}