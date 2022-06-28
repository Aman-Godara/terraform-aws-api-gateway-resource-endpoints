# replace all <some text inside it> with the required details

# details of 1 resource with no methods
# THIS WILL BE FILLED BY BACKEND ENGINEERS, WHEN DEFAULT SETTINGS ARE OVERRIDEN THEY SHOULD BE VERIFIED BY THE DEVOPS ENGINEER
resources = {

  "/resourceone" = {
    # this resource will be created on dev api, no default settings will be overridden
    apis = { dev = {} }

    # this resource has no methods
    methods = {}
  }
}
