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
  # --- Unconfirmed validation candidates, derived from azurerm_iothub_enrichment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: key
  #   condition: can(regex("^[-_.a-zA-Z0-9]{1,64}$", value))
  #   message:   Enrichment Key name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: iothub_name
  #   source:    [from validate.IoTHubName] !matched
  # path: value
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: endpoint_names[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

