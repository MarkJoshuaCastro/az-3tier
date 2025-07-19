output "vnet_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}

output "subnet_ids" {
  description = "Map of subnet names to their IDs"
  value = {
    for name, subnet in azurerm_subnet.subnets :
    name => subnet.id
  }
}
