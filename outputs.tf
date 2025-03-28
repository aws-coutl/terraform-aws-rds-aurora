// aws_rds_cluster
output "aurora_cluster_arn" {
  description = "The ID of the cluster"
  value       = aws_rds_cluster.primary.arn
}

output "aurora_cluster_id" {
  description = "The ID of the cluster"
  value       = aws_rds_cluster.primary.id
}

output "aurora_cluster_resource_id" {
  description = "The Resource ID of the cluster"
  value       = aws_rds_cluster.primary.cluster_resource_id
}

output "aurora_cluster_endpoint" {
  description = "The cluster endpoint"
  value       = aws_rds_cluster.primary.endpoint
}

output "aurora_cluster_reader_endpoint" {
  description = "The cluster reader endpoint"
  value       = aws_rds_cluster.primary.reader_endpoint
}

// database_name is not set on `aws_rds_cluster` resource if it was not specified, so can't be used in output
output "aurora_cluster_database_name" {
  description = "Name for an automatically created database on cluster creation"
  value       = var.database_name
}

output "aurora_cluster_master_password" {
  description = "The master password"
  value       = aws_rds_cluster.primary.master_password
  sensitive   = true
}

output "aurora_cluster_port" {
  description = "The port"
  value       = aws_rds_cluster.primary.port
}

output "aurora_cluster_master_username" {
  description = "The master username"
  value       = aws_rds_cluster.primary.master_username
}

output "aurora_cluster_hosted_zone_id" {
  description = "Route53 hosted zone id of the created cluster"
  value       = aws_rds_cluster.primary.hosted_zone_id
}

// aws_rds_cluster_instance
output "aurora_cluster_instance_endpoints" {
  description = "A list of all cluster instance endpoints"
  value       = aws_rds_cluster_instance.primary.*.endpoint
}

output "aurora_cluster_instance_ids" {
  description = "A list of all cluster instance ids"
  value       = aws_rds_cluster_instance.primary.*.id
}