data "oci_generative_ai_endpoints" "generative_ai_endpoints_lookup" {
  for_each = var.generative_ai_endpoints_lookup

  compartment_id                    = each.value.compartment_id
  display_name                      = each.value.display_name
  generative_ai_private_endpoint_id = each.value.generative_ai_private_endpoint_id
  state                             = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

