# fill the details between <>

aws_region = "<aws region>"


# default settings for dev and staging apis
# THIS WILL BE FILLED BY THE DEVOPS ENGINEER
apis = {
  "dev" = {
    rest_api_id = "<id of dev rest api>"
    root_id     = "<id of dev rest api's root resource>"
    methods = {
      "GET" = {
        type                    = "HTTP"
        integration_http_method = "GET"
        uri                     = "<urihere>"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "POST" = {
        type                    = "HTTP"
        integration_http_method = "POST"
        uri                     = "<urihere>"
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
    rest_api_id = "id of staging rest api"
    root_id     = "id of staging rest api's root resource"
    methods = {
      "GET" = {
        type                    = "HTTP"
        integration_http_method = "GET"
        uri                     = "<urihere>"
        authorization           = "NONE"
        authorizer_id           = null
        connection_id           = null
        connection_type         = null
      }
      "POST" = {
        type                    = "HTTP"
        integration_http_method = "POST"
        uri                     = "<urihere>"
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
