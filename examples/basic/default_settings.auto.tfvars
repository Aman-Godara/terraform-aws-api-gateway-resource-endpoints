# replace all <some text inside it> with the required details

aws_region = "<aws region>"


# default settings for dev api
# THIS WILL BE FILLED BY THE DEVOPS ENGINEER
apis = {
  "dev" = {
    rest_api_id = "<id of dev rest api>"
    root_id     = "<id of dev rest api's root resource>"
    methods     = {}
    responses   = {}
  }
}
