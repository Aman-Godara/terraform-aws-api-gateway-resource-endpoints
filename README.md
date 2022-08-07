# terraform-aws-api-gateway-resources-methods

Terraform module to create resources & methods like GET, PUT, POST, DELETE, OPTIONS, etc on AWS API Gateway for REST APIs. To know more about Terraform (IaC) visit: https://www.terraform.io.

This module is designed to require ZERO knowledge of AWS or DevOps when creating resources & methods with default settings, this allows even the non-DevOps engineers with no knowledge of AWS to use the module on their own.

# Motivation

Creating resources & methods on AWS API Gateway is a cumbersome task. Many Backend engineers at author's organization mentioned their dissatisfaction with the AWS Management Console's UI for creating resources & methods. Task was so frequent that it required Backend engineers to learn some DevOps to do it on AWS and felt redundant at the same time.


Author felt the need to create a module for non-DevOps engineers to mention the minimal details of what they want to create and let the module do the heavy-lifting of managing AWS API Gateway for them.

# Features

- Declarative
- Compatible with your existing infrastructure on AWS
- Written using Terraform (most famous IaC 2022) Language
- Compatible with any existing work on Terraform of your organization
- View and change the default settings of AWS API Gateway at one place
- Easily override the default settings to cater to your wildly specific configuration needs

# Comparison with traditional way of creating resources & methods i.e. AWS Management Console's UI

### Advantages
- Saves time & energy of developers, especially when default settings are not overridden
- Reduces chances of making CORS or any other errors concerning AWS setup greatly
- Requires ZERO knowledge of AWS to create resources & methods which follow the default settings

Atleast 80% of all the resources & methods are observed to follow the default settings.

### Disadvantages
- Newer version of module might be backwards incompatible as Terraform Language is a work in progress. Though migration guides will be helpful.
- DOCUMENTATION is not going to be a small one (not present yet, hence quite small as of now)

# How to setup the module

### Pre-requisities
1. Terraform
2. AWS CLI
3. AWS access & secret key of your AWS Management Console

### Follow the steps given below

1. Verify installation of Terraform & AWS CLI is successful
2. Use this module & initialize Terraform using `terraform init` (refer [examples](./examples) for more help)
3. Enter your AWS access & secret key using `aws configure` command of AWS CLI
4. Configure the module for default settings. Make sure to choose those settings as default which majority of your resources & methods are expected to follow (this step is done by DevOps engineer)
5. Enter the resources & methods that you want to create (this step is done by Backend engineers)
6. Run `terraform apply`, type `yes` to approve the changes and now relax
7. Reload your page on AWS Management Console to see the changes

# DEMO module vs ACTUAL module

This module is a DEMO module written to highlight the capabilities of ACTUAL module. ACTUAL module is 
a still in progress.

Please leave your feedback so that the author can gather broader knowledge on the work: what you liked, what can be improved, what you disliked, etc. This will help the author think through the details and plan the development of the ACTUAL module accordingly.

Thank you
