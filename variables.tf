variable "subscription_id" {
  description = "Azure_Subscription_id"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "oyster-rg"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "South Africa North"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "oyster-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "oyster-subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
  default     = "oyster-public-ip"
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "oyster-nsg"
}

variable "nic_name" {
  description = "Name of the network interface"
  type        = string
  default     = "oyster-nic"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "oyster-vm"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2ts_v2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
