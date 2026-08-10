resource "azurerm_virtual_network" "oyster-vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
}

# Create Subnet

resource "azurerm_subnet" "oyster-subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.oyster-vnet.name
  address_prefixes     = var.subnet_address_prefix
}

# Create Public_IP

resource "azurerm_public_ip" "oyster-public-ip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Create Network Security Group

resource "azurerm_network_security_group" "oyster-nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}