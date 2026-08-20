output "network_interface_id" {
  description = "Network interface ID"
  value       = azurerm_network_interface.example.id
}

output "linux_virtual_machine_id" {
  description = "Virtual Machine ID"
  value       = azurerm_linux_virtual_machine.example.id
}

output "virtual_machine_extension_id" {
  description = "Extension CustomScript ID"
  value       = azurerm_virtual_machine_extension.vm_extension.id
}