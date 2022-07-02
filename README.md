# terraform-aws-api-gateway-resources-methods

Terraform module to create resources and methods like GET, PUT, POST, DELETE, OPTIONS, etc on AWS API Gateway for REST APIs. To know more about Terraform (IaC) visit: https://www.terraform.io.

This module is designed to require ZERO knowledge of AWS or DevOps when creating resources & methods with default settings. This allows even the non-DevOps engineers with no knowledge of AWS to use the module on their own.

# Features

1. Declarative
2. Compatible with your existing infrastructure on AWS
3. Written using Terraform (most famous IaC 2022) Language
4. Compatible with any existing work on Terraform of your organization
5. View and change the default settings of AWS API Gateway at one place
6. Easily override the default settings to cater to your wildly specific configuration needs

# Comparison with traditional ways of creating resources & methods i.e. AWS Management Console's UI

### Advantages
1. Saves time & energy of developers, especially when default settings are not overridden
2. Reduces chances of making CORS or any other errors concerning AWS setup greatly
3. Requires ZERO knowledge of AWS to create resources & methods which follow the default settings

Atleast 80% of the resouces & methods are observed to follow the default settings.

### Disadvantages
1. Newer version of module might be backwards incompatible as Terraform Language is a work in progress. Though migration guides will be helpful.
2. DOCUMENTATION is not going to be a small one (not present yet, hence quite small as of now)

# How to setup the module (one time setup)

### Pre-requisities for using the module
1. Terraform
2. AWS CLI
3. AWS access & secret keys

### Follow these steps given below:
1. Verify installation of Terraform & AWS CLI is successful
2. Use this module & initialize Terraform using `terraform init` (refer [examples](./examples) for more help)
3. Enter your AWS access & secret keys using `aws configure` command of AWS CLI
4. Configure the module for default settings. Make sure to choose those settings as default which majority of your resources & methods are expected to follow. (this step is done by DevOps engineer)
5. Enter the resources & methods that you want to create (this step is done by Backend engineers)
6. Run `terraform apply` and relax

---
This module is a DEMONSTRATION module written to set the stage for discussions on the ACTUAL module and highlight the capabilities of ACTUAL module. This DEMO module is freely available, but has some limitations over ACTUAL module. ACTUAL module provides all functionalities to create resources & methods, but is pay-walled. To buy ACTUAL module (expected price ~ 10 USD), please wait for the first release of ACTUAL module.

You can earn percentage of the profit too by making good contributions to DEMO and ACTUAL module repositories. All forms of contributions/advices, be it technical or non-technical, are accepted, from improving DOCUMENTATION, providing feedbacks to testing the module.
