output "storage_account_id" {
  description = "ID Storage Account"
  value       = azurerm_storage_account.example.id
}

output "storage_account_name" {
  description = "Storage Account name"
  value       = azurerm_storage_account.example.name
}

output "storage_container_id" {
  description = "ID Storage Container"
  value       = azurerm_storage_container.example.id
}