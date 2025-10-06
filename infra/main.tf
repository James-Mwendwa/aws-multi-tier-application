module "ecr" {
  source                = "./ecr"
  web_app_repo_name     = var.web_app_repo_name
  backend_app_repo_name = var.backend_app_repo_name
  aws_region            = var.aws_region
}

module "eks" {
  source        = "./eks"
  cluster_name  = var.cluster_name

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
}


module "vpc" {
  source              = "./vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "dynamodb" {
  source ="./dynamodb"
  table_name = var.table_name
  partition_key_name = var.partition_key_name
  partition_key_type = var.partition_key_type
  billing_mode = var.billing_mode
  create_kms_key = var.create_kms_key
}