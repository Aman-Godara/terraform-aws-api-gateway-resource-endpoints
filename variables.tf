variable "sep" {
  description = "Key separator"
  nullable    = false
  type        = string
  default     = " - "
}

variable "aws_region" {
  description = "AWS region"
  nullable    = false
  type        = string
}

variable "apis" {
  description = "default settings for apis"
  nullable    = false
  type = map(object({
    rest_api_id = string
    root_id     = string
    methods = map(object({
      integration_http_method = string
      type                    = string
      uri                     = string
      connection_type         = string
      connection_id           = string
      authorization           = string
      authorizer_id           = string
    }))
    responses = map(object({
      headers = map(object({
        return = bool
        value  = string
      }))
      selection_pattern = string
      content_handling  = string
    }))
  }))
}

variable "resources" {
  description = "create resources and methods"
  nullable    = false
  type = map(object({
    apis = map(object({
      methods = optional(map(object({
        integration_http_method = optional(string)
        type                    = optional(string)
        uri                     = optional(string)
        connection_type         = optional(string)
        connection_id           = optional(string)
        authorization           = optional(string)
        authorizer_id           = optional(string)
      })))
      responses = optional(map(object({
        headers = optional(map(object({
          return = optional(bool)
          value  = optional(string)
        })))
        selection_pattern = optional(string)
        content_handling  = optional(string)
      })))
    }))
    methods = map(object({
      request = object({
        paths = map(object({
          value = string
        }))
        querystrings = map(object({
          required = bool
          value    = string
        }))
        headers = map(object({
          required = bool
          value    = string
        }))
      })
      responses = list(string)
    }))
  }))
}
