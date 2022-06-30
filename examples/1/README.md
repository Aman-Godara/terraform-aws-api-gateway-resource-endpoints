# 1). Description

## 1.1). dev and staging API on AWS API Gateway
<img src="./images/AWS API Gateway.JPG">

## 1.2). Before

##### 1.2.1). dev API
<img src="./images/dev API Before.JPG">

##### 1.2.2). staging API
<img src="./images/staging API Before.JPG">

## 1.3). After

##### 1.3.1). dev API
<img src="./images/dev API After.JPG">

##### 1.3.2). staging API
<img src="./images/staging API After.JPG">

# 2). Steps to run this example without any modification:

1. Enter your `aws_region` in default_settings.auto.tfvars file
2. Pick any 2 APIs from your AWS API Gateway, call one as `dev` and the other as `staging`
3. Enter `rest_api_id` and `root_id` for `dev` and `staging` APIs in default_settings.auto.tfvars file (refer the images to figure out how to get these ids for your AWS API Gateway)
4. Run `terraform apply` command, terraform will inform you of all the changes it will make on your AWS API Gateway
5. Type `yes` to confirm changes and wait for terraform to finish
6. Reload your page on AWS Management Console to see the changes

# 3). Steps to modify & run this example

It is recommended for better understanding to follow [Steps to run this example without any modification](#steps-to-run-this-example-without-any-modification) before you modify & run this example

1. Modify default_settings.auto.tfvars file and resources_methods.auto.tfvars file as per your wish
2. Jump to [Steps to run this example without any modification](#steps-to-run-this-example-without-any-modification). Ignore step **1**, **2** and **3** if they are done already.


# 4). How to fix errors

1. Did it work for [Steps to run this example without any modification](#steps-to-run-this-example-without-any-modification)?
    1. If YES:
        1. Read the console messages to fix the errors
        2. Make sure you are not hit by any limitations of this DEMO module
        3. Have you read the documentation & FAQs?
            1. If YES:
                1. Ask for help from author
            2. If NO:
                1. Read the documentation & FAQs
    2. If NO:
        1. Make sure terraform is installed
        2. Did you initialize terraform for this particular example?
            1. If NO:
                1. Move to the directory in which **this** README.md file is present
                2. Run `terraform init`
        3. Did you enter you AWS Access Key & AWS Secret Key?
            1. If NO:
                1. Download and install AWS CLI
                2. Verify the installation using the command `aws --version`
                3. Run `aws configure` and enter your AWS credentials
        4. Make sure your AWS Provider version satisfies the requirements of this module
        5. Ask for help from Terraform community

