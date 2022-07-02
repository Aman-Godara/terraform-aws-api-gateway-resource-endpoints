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
    # this resource will be created on dev and staging api
    apis = { dev = {}, staging = {} }

    # this resource has no methods
    methods = {}
  }

  "/resourcethree" = {
    # this resource will be created on dev and staging api
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
