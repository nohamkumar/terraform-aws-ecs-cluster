resource "aws_ecs_cluster" "cluster" {
  name = module.this.id
  tags = merge(
    module.this.tags,
    {
      Name = "${module.this.id}"
    }
  )
}

resource "aws_ecs_cluster_capacity_providers" "custom" {
  cluster_name = aws_ecs_cluster.cluster.name

  capacity_providers = [var.cluster_capacity_provider]

  default_capacity_provider_strategy {
    base              = var.capacity_provider_base
    weight            = 100
    capacity_provider = var.cluster_capacity_provider
  }
}

