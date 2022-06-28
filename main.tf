terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
  experiments = [module_variable_optional_attrs]
}

provider "aws" {
  region = var.aws_region
}
