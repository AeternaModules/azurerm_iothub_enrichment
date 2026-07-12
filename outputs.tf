output "iothub_enrichments_endpoint_names" {
  description = "Map of endpoint_names values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.endpoint_names }
}
output "iothub_enrichments_iothub_name" {
  description = "Map of iothub_name values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.iothub_name }
}
output "iothub_enrichments_key" {
  description = "Map of key values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.key }
}
output "iothub_enrichments_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.resource_group_name }
}
output "iothub_enrichments_value" {
  description = "Map of value values across all iothub_enrichments, keyed the same as var.iothub_enrichments"
  value       = { for k, v in azurerm_iothub_enrichment.iothub_enrichments : k => v.value }
}

