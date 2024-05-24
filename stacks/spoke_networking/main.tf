// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "network" {
  source = "../../modules/network"
  spoke_networking = {
    primary = {
      location = "uksouth"
      rg_name  = "rg-vnet1"
      subnets = {
        subnet1 = {
          address_prefix = "10.0.1.0/24"
          name           = "subnet1"
          nsgs = {
            name = "subnet1-nsg"
          }
        }
        subnet2 = {
          address_prefix = "10.0.2.0/24"
          name           = "subnet2"
          nsgs = {
            name = "subnet2-nsg"
          }
        }
      }
      virtual_network_name = "vnet1"
      vnet_address_space   = "10.0.0.0/16"
    }
  }
}
