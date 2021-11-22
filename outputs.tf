output "region" {
  value       = var.region
  description = "AWS Region"
}

output "zone1" {
  value       = var.zone1
  description = "Availability zone1"
}
output "zone2" {
  value       = var.zone2
  description = "Availability zone2"
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = var.cluster_name
}

output "machine_type" {
  description = "Machine type used"
  value       = var.machine_type
}
output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.my-cluster.cluster_id
}

