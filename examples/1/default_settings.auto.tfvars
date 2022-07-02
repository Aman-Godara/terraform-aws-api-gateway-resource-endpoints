aws_region = "ap-south-1" # TODO: change this value to proceed


# default settings for dev and staging apis
# THIS WILL BE FILLED BY THE DEVOPS ENGINEER
apis = {
  "dev" = {
    rest_api_id = "xq2qws0si8" # TODO: change this value to proceed
    root_id     = "f2mkujtt1a" # TODO: change this value to proceed
    methods = {
      "GET" = {
        type                    = "HTTP"
        integration_http_method = "GET"
        uri                     = "https://api.endpoint.com/dev"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "POST" = {
        type                    = "HTTP"
        integration_http_method = "POST"
        uri                     = "https://api.endpoint.com/dev"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "OPTIONS" = {
        type                    = "MOCK"
        integration_http_method = null
        uri                     = null
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
    }
    responses = {
      "200" = {
        selection_pattern = "2/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = false }
        }
        content_handling = null
      }
      "400" = {
        selection_pattern = "4/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = false }
        }
        content_handling = null
      }
      "500" = {
        selection_pattern = "5/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = false }
        }
        content_handling = null
      }
    }
  }
  "staging" = {
    rest_api_id = "kqdo81h562" # TODO: change this value to proceed
    root_id     = "j7u9jt1k75" # TODO: change this value to proceed
    methods = {
      "GET" = {
        type                    = "HTTP"
        integration_http_method = "GET"
        uri                     = "https://api.endpoint.com/staging"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "POST" = {
        type                    = "HTTP"
        integration_http_method = "POST"
        uri                     = "https://api.endpoint.com/staging"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "OPTIONS" = {
        type                    = "MOCK"
        integration_http_method = null
        uri                     = null
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
    }
    responses = {
      "200" = {
        selection_pattern = "2/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = true }
        }
        content_handling = null
      }
      "400" = {
        selection_pattern = "4/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = true }
        }
        content_handling = null
      }
      "500" = {
        selection_pattern = "5/d{2}"
        headers = {
          "Access-Control-Allow-Origin"  = { value = "'*'", return = true }
          "Access-Control-Allow-Methods" = { value = "'*'", return = true }
        }
        content_handling = null
      }
    }
  }
}
