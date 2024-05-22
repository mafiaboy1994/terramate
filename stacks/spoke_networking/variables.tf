// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "spoke_networking" {
  default = {
    network1 = {
      location = "uksouth"
      rg_name  = "rg-vnet1"
      subnet = {
        subnet1 = {
          address_prefix = "10.0.1.0/24"
          name           = "subnet1"
        }
      }
      virtual_network_name = "vnet1"
      vnet_address_space   = "10.0.0.0/16"
    }
  }
  type = map(object({
    virtual_network_name = string
    location             = string
    vnet_address_space   = string
    rg_name              = string
    subnet = map(object({
      address_prefix = string
      name           = string
    }))
  }))
}
