# fill the details between <>

module "api-gateway-resources-methods" {
  source = "../../"

  # details of aws region
  aws_region = "<aws region>"

  # default settings for apis
  apis = var.apis

  # details of resources & their methods
  resources = var.resources
}
