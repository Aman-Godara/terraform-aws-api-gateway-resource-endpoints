# details of 3 resources with no methods
# THIS WILL BE FILLED BY BACKEND ENGINEERS, WHEN DEFAULT SETTINGS ARE OVERRIDEN THEY SHOULD BE VERIFIED BY DEVOPS ENGINEER
resources = {
  "/resourceone" = {
    # this resource will be created on dev, staging & prod api, no default settings will be overridden
    apis = { dev = {}, staging = {}, prod = {} }

    # this resource has no methods
    methods = {}
  }

  "/resourcetwo" = {
    # this resource will be created on dev & staging api, no default settings will be overridden
    apis = { dev = {}, staging = {} }

    # this resource has no methods
    methods = {}
  }

  "/resourcethree" = {
    # this resource will be created on dev api, no default settings will be overridden
    apis = { dev = {} }

    # this resource has no methods
    methods = {}
  }
}
