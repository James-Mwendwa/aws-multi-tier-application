module "ecr" {
  source                = "./ecr"
  web_app_repo_name     = var.web_app_repo_name
  backend_app_repo_name = var.backend_app_repo_name
  aws_region            = var.aws_region
}