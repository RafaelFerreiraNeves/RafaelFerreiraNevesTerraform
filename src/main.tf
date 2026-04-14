module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0.0"

  cluster_name    = var.aws_eks_name
  cluster_version = var.aws_eks_version

  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    default = {
      instance_types = var.aws_eks_managed_node_groups_instance_types
      desired_size   = 2
      max_size       = 3
      min_size       = 1

      iam_role_additional_policies = {
        AmazonEKSWorkerNodePolicy          = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
        AmazonEC2ContainerRegistryReadOnly = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
        AmazonEKS_CNI_Policy               = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      }
    }
  }

  tags = var.aws_project_tags

  depends_on = [module.vpc]
}
