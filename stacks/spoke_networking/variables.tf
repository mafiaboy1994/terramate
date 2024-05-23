// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "spoke_networking" {
  default = {
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
variable "storageAccounts" {
  default = {
    primary = {
      account_replication_type = "GRS"
      account_tier             = "Standard"
      location                 = "uksouth"
      resource_group_name      = "rg-vnet1"
      sa_name                  = "ebwsstorageaccountlocals"
    }
  }
  type = map(object({
    sa_name                  = string
    account_tier             = string
    account_replication_type = string
    resource_group_name      = string
    location                 = string
  }))
}
