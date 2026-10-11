variable "generative_ai_endpoints_lookup" {
  description = <<EOT
Map of generative_ai_endpoints_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - generative_ai_private_endpoint_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                    = string
    display_name                      = optional(string)
    generative_ai_private_endpoint_id = optional(string)
    state                             = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

