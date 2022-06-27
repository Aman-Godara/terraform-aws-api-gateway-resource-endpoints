terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
  }
  experiments = [module_variable_optional_attrs]
}

provider "aws" {
  region = var.aws_region
}
