# fill the details between <>
module "api-gateway-resources-methods" {
  source  = "../../"
  version = "1.0.1"

  # details of aws region
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


  # details of 3 resources & their methods
  # THIS WILL BE FILLED BY BACKEND ENGINEERS, WHEN DEFAULT SETTINGS ARE OVERRIDEN THEY SHOULD BE VERIFIED BY THE DEVOPS ENGINEER
  resources = {
    "/resourceone" = {

      # this resource will be created on dev api, no default settings will be overridden
      apis = { dev = {} }

      # this resource has 3 methods: OPTIONS, POST & GET
      methods = {
        "OPTIONS" = {
          request = {
            headers = {
              "headerone" = { required = true, value = "method.request.header.headerone" }
              "headertwo" = { required = false, value = "method.request.header.headertwo" }
            }
            paths        = {}
            querystrings = {}
          }
          responses = ["200"]
        }
        "POST" = {
          request = {
            headers = {
              "headerone" = { required = true, value = "method.request.header.headerone" }
              "headertwo" = { required = false, value = "method.request.header.headertwo" }
            }
            paths = {}
            querystrings = {
              "queryone" = { required = false, value = "method.request.querystring.queryone" }
              "querytwo" = { required = true, value = "method.request.querystring.querytwo" }
            }
          }
          responses = ["200", "400"]
        }
        "GET" = {
          request = {
            headers = {
              "headerone" = { required = true, value = "method.request.header.headerone" }
              "headertwo" = { required = true, value = "method.request.header.headertwo" }
            }
            paths = {}
            querystrings = {
              "userid" = { required = true, value = "method.request.querystring.userid" }
            }
          }
          responses = ["200", "500"]
        }
      }
    }

    "/resourcetwo" = {
      # this resource will be created on dev and stage api
      apis = { dev = {}, staging = {} }

      # this resource has no methods
      methods = {}
    }

    "/resourcethree" = {
      # this resource will be created on dev and stage api
      apis = { dev = {}, staging = {} }

      # this resource has 1 method: OPTIONS
      methods = {
        "OPTIONS" = {
          request = {
            headers = {
              "headerone" = { required = false, value = "method.request.header.headerone" }
            }
            paths        = {}
            querystrings = {}
          }
          responses = ["200"]
        }
      }
    }
  }
}
