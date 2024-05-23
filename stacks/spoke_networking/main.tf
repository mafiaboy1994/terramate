// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "network" {
  source = "../../modules/network"
  spoke_networking = {
    primary = {
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
}
module "storageAccounts" {
  source = "../../modules/storageAccounts"
  storageAccounts = {
    primary = {
      account_replication_type = "GRS"
      account_tier             = "Standard"
      location                 = "uksouth"
      resource_group_name      = "rg-vnet1"
      sa_name                  = "ebwsstorageaccountlocals"
    }
  }
}
output "network_vnet_ids" {
  value = module.network.vnet_id
}
output "network_subnet_ids" {
  value = module.network.subnet_ids
}
output "storage_account_ids" {
  value = module.storageAccounts.storage_account_ids
}
