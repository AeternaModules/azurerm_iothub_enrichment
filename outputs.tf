output "iothub_enrichments_id" {
  description = "Map of id values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iothub_enrichments_endpoint_names" {
  description = "Map of endpoint_names values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.endpoint_names if v.endpoint_names != null && length(v.endpoint_names) > 0 }
}
output "iothub_enrichments_iothub_name" {
  description = "Map of iothub_name values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.iothub_name if v.iothub_name != null && length(v.iothub_name) > 0 }
}
output "iothub_enrichments_key" {
  description = "Map of key values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.key if v.key != null && length(v.key) > 0 }
}
output "iothub_enrichments_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iothub_enrichments_value" {
  description = "Map of value values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.value if v.value != null && length(v.value) > 0 }
}

