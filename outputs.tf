output "iothub_enrichments" {
  description = "All iothub_enrichment resources"
  value       = azurerm_iothub_enrichment.iothub_enrichments
}
output "iothub_enrichments_endpoint_names" {
  description = "List of endpoint_names values across all iothub_enrichments"
  value       = [for k, v in azurerm_iothub_enrichment.iothub_enrichments : v.endpoint_names]
}
output "iothub_enrichments_iothub_name" {
  description = "List of iothub_name values across all iothub_enrichments"
  value       = [for k, v in azurerm_iothub_enrichment.iothub_enrichments : v.iothub_name]
}
output "iothub_enrichments_key" {
  description = "List of key values across all iothub_enrichments"
  value       = [for k, v in azurerm_iothub_enrichment.iothub_enrichments : v.key]
}
output "iothub_enrichments_resource_group_name" {
  description = "List of resource_group_name values across all iothub_enrichments"
  value       = [for k, v in azurerm_iothub_enrichment.iothub_enrichments : v.resource_group_name]
}
output "iothub_enrichments_value" {
  description = "List of value values across all iothub_enrichments"
  value       = [for k, v in azurerm_iothub_enrichment.iothub_enrichments : v.value]
}

