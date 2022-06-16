output "ecs_cluster_id" {
  description = "ECS cluster ID"
  value       = aws_ecs_cluster.cluster.id
}

output "capacity_providers" {
  description = "ECS cluster capacity proiver ID"
  value       = aws_ecs_cluster_capacity_providers.custom.id
}
