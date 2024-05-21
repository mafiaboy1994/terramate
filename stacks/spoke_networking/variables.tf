variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "location" {
  description = "The location to deploy to"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the VNet"
  type        = string
}

variable "rg_name" {
  description = "The resource group name"
  type        = string
}
