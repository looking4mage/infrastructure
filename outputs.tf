output "cluster_endpoint" {
  value       = digitalocean_kubernetes_cluster.cluster.endpoint
  description = "The cluster's API endpoint."
  sensitive   = true
}

output "cluster_config" {
  value       = digitalocean_kubernetes_cluster.cluster.kube_config.0.raw_config
  description = "The kubeconfig file used to interact with the cluster via kubectl."
  sensitive   = true
}

