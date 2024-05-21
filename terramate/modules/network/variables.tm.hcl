generate_hcl "variables.tf" {
  content {
    variable "virtual_network_name" {
      description = "The name of the virtual network"
      type        = string
      default     = global.virtual_network_name
    }

    variable "location" {
      description = "The location to deploy to"
      type        = string
      default     = global.location
    }

    variable "vnet_address_space" {
      description = "The address space for the VNet"
      type        = string
      default     = global.vnet_address_space
    }

    variable "rg_name" {
      description = "The resource group name"
      type        = string
      default     = global.rg_name
    }

  }
}