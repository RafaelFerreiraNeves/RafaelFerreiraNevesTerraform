variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "aws_vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "aws_vpc_cidr" {
  description = "CIDR da VPC"
  type        = string
}

variable "aws_vpc_azs" {
  description = "Lista de Availability Zones"
  type        = list(string)
}

variable "aws_vpc_private_subnets" {
  description = "Subnets privadas"
  type        = list(string)
}

variable "aws_vpc_public_subnets" {
  description = "Subnets públicas"
  type        = list(string)
}

variable "aws_eks_name" {
  description = "Nome do cluster EKS"
  type        = string
}

variable "aws_eks_version" {
  description = "Versão do Kubernetes no EKS"
  type        = string
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Tipos de instância do node group"
  type        = list(string)
}

variable "aws_project_tags" {
  description = "Tags aplicadas aos recursos"
  type        = map(string)
}