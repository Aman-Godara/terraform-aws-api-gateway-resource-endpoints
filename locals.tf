locals {
  resource_details = { for kr, vr in var.resources :
    kr => { for ka, va in vr.apis :
      ka => {
        rest_api_id = var.apis[ka].rest_api_id
        root_id     = var.apis[ka].root_id
        methods = merge(
          { for km, vm in vr.methods :
            km => var.apis[ka].methods[km]
          },
          va.methods != null ? { for km, vm in va.methods :
            km => defaults(vm, var.apis[ka].methods[km])
          } : {}
        )
        responses = merge(
          merge([for km, vm in vr.methods :
            { for ksc in vm.responses :
              ksc => var.apis[ka].responses[ksc]
            }
          ]...),
          va.responses != null ? { for ksc, vsc in va.responses :
            ksc => {
              headers = merge(
                var.apis[ka].responses[ksc].headers,
                vsc.headers != null ? { for kh, vh in vsc.headers :
                  kh => defaults(vh, var.apis[ka].responses[ksc].headers[kh])
                } : {}
              )
              selection_pattern = vsc.selection_pattern != null ? vsc.selection_pattern : var.apis[ka].responses[ksc].selection_pattern
              content_handling  = vsc.content_handling != null ? vsc.content_handling : var.apis[ka].responses[ksc].content_handling
            }
          } : {}
        )
      }
    }
  }
}

locals {
  api_resource = merge([for kr, vr in var.resources :
    { for ka, va in vr.apis :
      "${ka}${var.sep}${kr}" => {
        rest_api_id = local.resource_details[kr][ka].rest_api_id
        parent_id   = local.resource_details[kr][ka].root_id
        path_part   = substr(kr, 1, length(kr))
      }
    }
  ]...)
}

locals {
  api_resource_method = merge([for kr, vr in var.resources :
    merge([for ka, va in vr.apis :
      { for km, vm in vr.methods :
        "${ka}${var.sep}${kr}${var.sep}${km}" => {
          rest_api_id             = local.resource_details[kr][ka].rest_api_id
          http_method             = km
          api_resource_key        = "${ka}${var.sep}${kr}"
          resource_method_key     = "${kr}${var.sep}${km}"
          integration_http_method = local.resource_details[kr][ka].methods[km].integration_http_method
          type                    = local.resource_details[kr][ka].methods[km].type
          uri                     = local.resource_details[kr][ka].methods[km].uri
          authorization           = local.resource_details[kr][ka].methods[km].authorization
          authorizer_id           = local.resource_details[kr][ka].methods[km].authorizer_id
          connection_type         = local.resource_details[kr][ka].methods[km].connection_type
          connection_id           = local.resource_details[kr][ka].methods[km].connection_id
        }
      }
    ]...)
  ]...)
}

locals {
  resource_method_request_parameters = merge([for kr, vr in var.resources :
    { for km, vm in vr.methods :
      "${kr}${var.sep}${km}" => merge(
        { for kh, vh in vm.request.headers : "integration.request.header.${kh}" => vh },
        { for kp, vp in vm.request.paths : "integration.request.path.${kp}" => { required = true, value = vp.value } },
        { for kq, vq in vm.request.querystrings : "integration.request.querystring.${kq}" => vq },
      )
    }
  ]...)
}

locals {
  api_resource_method_status_code = merge([for kr, vr in var.resources :
    merge([for ka, va in vr.apis :
      merge([for km, vm in vr.methods :
        { for ksc in vm.responses :
          "${ka}${var.sep}${kr}${var.sep}${km}${var.sep}${ksc}" => {
            rest_api_id      = local.resource_details[kr][ka].rest_api_id
            http_method      = km
            status_code      = ksc
            api_resource_key = "${ka}${var.sep}${kr}"
            response_parameters = { for kh, vh in local.resource_details[kr][ka].responses[ksc].headers :
              "method.response.header.${kh}" => vh
            }
            selection_pattern = local.resource_details[kr][ka].responses[ksc].selection_pattern
            content_handling  = local.resource_details[kr][ka].responses[ksc].content_handling
          }
        }
      ]...)
    ]...)
  ]...)
}
