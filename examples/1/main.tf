terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # use your preferred version of aws provider here, using 4.17.1 for now
      version = "4.17.1"
    }
  }
  experiments = [module_variable_optional_attrs]
}

provider "aws" {
  region = var.aws_region
}

module "api-gateway-resources-methods" {
  source = "../../"

  # details of aws region
  aws_region = var.aws_region

  # default settings for apis
  apis = var.apis

  # details of resources & their methods
  resources = var.resources
}
