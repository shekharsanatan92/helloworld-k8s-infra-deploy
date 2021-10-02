module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = local.cluster_name
  cluster_version = "1.21"
  subnets         = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  worker_groups = [
    {
      name                          = "worker-group-1"
      instance_type                 = var.wg_1_instance_type
      asg_desired_capacity          = var.wg_1_asg_desired_capacity
      additional_security_group_ids = [aws_security_group.worker_group_ssh_access.id]
    },
    {
      name                          = "worker-group-2"
      instance_type                 = var.wg_2_instance_type
      asg_desired_capacity          = var.wg_2_asg_desired_capacity
      additional_security_group_ids = [aws_security_group.worker_group_ssh_access.id]
    },
  ]
}