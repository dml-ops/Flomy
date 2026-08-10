# vm public IP

output "vm_public_ip" {
  value = module.network.public_ip_address
}

# resource group name


output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.oyster-rg.name
}

# vnet name


output "vnet_name" {
  value = module.network.vnet_name
}

# subnet


output "subnet_id" {
  description = "ID of the subnet"
  value       = module.network.subnet_id
}

# vm name


output "vm_name" {
  value = module.compute.vm_name
}

# nsg name


output "nsg_name" {
  description = "Name of the network security group"
  value       = module.network.nsg_name
}

# ssh command

output "ssh_connection_command" {
  value = "ssh ${var.admin_username}@${module.network.public_ip_address}"
}


