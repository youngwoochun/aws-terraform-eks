output "kubeconfig" {
  value       = module.my-cluster.kubeconfig
  description = "EKS Kubeconfig"
}

output "config_map" {
  value       = module.my-cluster.config_map_aws_auth
  description = "K8S config map to authorize"
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.my-cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.my-cluster.cluster_security_group_id
}

output "region" {
  description = "AWS region."
  value       = var.region
}
