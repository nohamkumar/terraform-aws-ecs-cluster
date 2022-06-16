
variable "cluster_capacity_provider" {
  description = "Cluster Capacity provider: ex: FARGATE, OR FARGATE_STOP. Default = FARGATE_SPOT"
  type        = string
  default     = "FARGATE_SPOT"
}


variable "capacity_provider_base" {
  description = <<-EOF
  "Capacity provider strategy base value.
  Minimum number of tasks to run on the specified capacity provider.
  Default = 1"
  EOF
  default     = "1"
}
