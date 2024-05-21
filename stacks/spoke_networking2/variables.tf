// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "virtual_network_name" {
  default     = "spoke-network"
  description = "The name of the virtual network"
  type        = string
}
variable "location" {
  default     = "us-west-2"
  description = "The location to deploy to"
  type        = string
}
variable "vnet_address_space" {
  default     = "10.0.0.0/16"
  description = "The address space for the VNet"
  type        = string
}
variable "rg_name" {
  default     = "my-resource-group"
  description = "The resource group name"
  type        = string
}
