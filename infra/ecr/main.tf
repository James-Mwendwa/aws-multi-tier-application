provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "web-app_repo" {
  name                 = var.web_app_repo_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.web_app_repo_name
  }
}

resource "aws_ecr_repository" "backend-app_repo" {
  name                 = var.backend_app_repo_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.backend_app_repo_name
  }
}
##left shifting security