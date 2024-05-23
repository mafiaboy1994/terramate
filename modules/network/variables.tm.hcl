
generate_hcl "variables.tf" {
  content {
     variable "spoke_networking" {
      type = map(object({
        virtual_network_name = string
        location             = string
        vnet_address_space   = string
        rg_name              = string
        subnet               = map(object({
          address_prefix = string
          name           = string
        }))
      }))
      default = global.spoke_networking
    }
    variable "storageAccounts" {
            type = map(object({
                sa_name = string
                account_tier = string
                account_replication_type = string
                resource_group_name = string
                location = string
            
            }))
            default = global.storage_accounts
        }
  }
}