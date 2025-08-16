module "ecr" {
  source                = "./ecr"
  web_app_repo_name     = var.web_app_repo_name
  backend_app_repo_name = var.backend_app_repo_name
  aws_region            = var.aws_region
}

module "eks" {
  source = "./eks"
}

module "vpc" {
  source              = "./vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}