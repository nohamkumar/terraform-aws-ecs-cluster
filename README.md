# Purpose:
To create ECS Cluster.                                          

## Variable Inputs:

- namespace                 (ex: project name)
- environment               (ex: dev/prod)
- cluster_capacity_provider Cluster Capacity provider: ex: FARGATE, FARGATE_STOP. Default = FARGATE_SPOT"

OPTIONAL:

- capacity_provider_base:   Capacity provider strategy base value. Minimum number of tasks to run on the specified capacity provider.                   Default = 1.


## Resources created:

- aws_ecs_cluster
- aws_ecs_cluster_capacity_providers                              

## Resources naming convention:

- ECS cluster: namespace-environment
    ex: sg-dev

# Steps to create the resources

1. Call the "ecs-cluster" module from your tf code.
3. Specifying Variable Inputs along the module call.
4. Apply.

Example:

```
module "ecs-cluster" {
  source      = "git@github.com:nohamkumar/aws-ecs-cluster.git"
  namespace   = "sg"
  environment = "dev"
}

```

3. From terminal: 

```
terraform init
```
```
terraform plan
```
```
terraform apply
```

!! You have successfully created ECS cluster components as per your specification !!

---


##OUTPUTS

```

ecs-cluster_id
  description = "ECS cluster ID"

capacity_providers
  description = "ECS cluster capacity proiver ID"


```
