output "resource_group_name" {
  description = "Resource group created for the lab"
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "Storage account name (globally unique)"
  value       = azurerm_storage_account.storage.name
}

output "blob_primary_endpoint" {
  description = "Primary Blob endpoint URL (will resolve privately when using Private DNS)"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "blob_container_name" {
  description = "Private blob container created for the lab"
  value       = azurerm_storage_container.blob_container.name
}

output "private_endpoint_id" {
  description = "Private Endpoint resource ID for Blob"
  value       = azurerm_private_endpoint.blob_pe.id
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.vnet.id
}

output "private_endpoint_subnet_id" {
  description = "Subnet ID used for Private Endpoints"
  value       = azurerm_subnet.private_endpoints.id
}
