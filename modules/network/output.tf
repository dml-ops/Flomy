output "subnet_id" {
  value = azurerm_subnet.oyster-subnet.id
}

output "public_ip_id" {
  value = azurerm_public_ip.oyster-public-ip.id
}

output "public_ip_address" {
  value = azurerm_public_ip.oyster-public-ip.ip_address
}

output "nsg_id" {
  value = azurerm_network_security_group.oyster-nsg.id
}

output "nsg_name" {
  value = azurerm_network_security_group.oyster-nsg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.oyster-vnet.name
}
