# Specify the provider (Azure) and version

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.57.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


# Create resource group

resource "azurerm_resource_group" "oyster-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "Moon" {
  name     = "Moon"
  location = "South Africa North"
}

module "network" {
  source = "./modules/network"

  resource_group_name   = azurerm_resource_group.oyster-rg.name
  location              = azurerm_resource_group.oyster-rg.location
  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  public_ip_name        = var.public_ip_name
  nsg_name              = var.nsg_name
}

module "compute" {
  source = "./modules/compute"

  resource_group_name = azurerm_resource_group.oyster-rg.name
  location            = azurerm_resource_group.oyster-rg.location
  nic_name            = var.nic_name
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path

  subnet_id    = module.network.subnet_id
  public_ip_id = module.network.public_ip_id
  nsg_id       = module.network.nsg_id
}



