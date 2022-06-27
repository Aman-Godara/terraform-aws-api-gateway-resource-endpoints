resource "aws_api_gateway_resource" "resource" {
  for_each = local.api_resource

  rest_api_id = each.value.rest_api_id
  parent_id   = each.value.parent_id
  path_part   = each.value.path_part
}

resource "aws_api_gateway_method" "method" {
  for_each = local.api_resource_method

  rest_api_id = each.value.rest_api_id
  resource_id = aws_api_gateway_resource.resource[each.value.api_resource_key].id

  http_method   = each.value.http_method
  authorization = each.value.authorization
  authorizer_id = each.value.authorizer_id
  request_parameters = { for k, v in local.resource_method_request_parameters[each.value.resource_method_key] :
    v => v.required
  }
}

resource "aws_api_gateway_integration" "integration" {
  for_each = local.api_resource_method

  rest_api_id = each.value.rest_api_id
  resource_id = aws_api_gateway_resource.resource[each.value.api_resource_key].id

  http_method             = each.value.http_method
  integration_http_method = each.value.integration_http_method
  type                    = each.value.type
  connection_type         = each.value.connection_type
  connection_id           = each.value.connection_id
  uri                     = each.value.uri
  request_parameters = { for k, v in local.resource_method_request_parameters[each.value.resource_method_key] :
    k => v.value
  }
}

resource "aws_api_gateway_method_response" "method_response" {
  for_each = local.api_resource_method_status_code

  rest_api_id = each.value.rest_api_id
  resource_id = aws_api_gateway_resource.resource[each.value.api_resource_key].id

  http_method     = each.value.http_method
  status_code     = each.value.status_code
  response_models = null

  response_parameters = { for k, v in each.value.response_parameters :
    k => v.return
  }
}

resource "aws_api_gateway_integration_response" "integration_response" {
  for_each = local.api_resource_method_status_code

  rest_api_id = each.value.rest_api_id
  resource_id = aws_api_gateway_resource.resource[each.value.api_resource_key].id

  http_method        = each.value.http_method
  status_code        = each.value.status_code
  selection_pattern  = each.value.selection_pattern
  response_templates = null
  content_handling   = each.value.content_handling

  response_parameters = { for k, v in each.value.response_parameters :
    k => v.value
  }
}
