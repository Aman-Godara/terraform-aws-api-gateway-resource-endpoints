terraform {
  experiments = [module_variable_optional_attrs]
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
