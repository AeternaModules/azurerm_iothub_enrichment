variable "iothub_enrichments" {
  description = <<EOT
Map of iothub_enrichments, attributes below
Required:
    - endpoint_names
    - iothub_name
    - key
    - resource_group_name
    - value
EOT

  type = map(object({
    endpoint_names      = list(string)
    iothub_name         = string
    key                 = string
    resource_group_name = string
    value               = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        can(regex("^[-_.a-zA-Z0-9]{1,64}$", v.key))
      )
    ])
    error_message = "Enrichment Key name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique."
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        length(v.value) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_enrichments : (
        alltrue([for x in v.endpoint_names : length(x) > 0])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

