generate_hcl "main.tf" {
    lets {
        network_config = {
            storageAccounts = global.storage_accounts
            spoke_networking = global.spoke_networking
        }
        }
    content {
        module "network" {
            source = "../../modules/network"
            #spoke_networking = tm_jsonencode(let.network_config.spoke_networking)
            spoke_networking = let.network_config.spoke_networking
        }
        module "storageAccounts" {
            source = "../../modules/storageAccounts"
            #storageAccounts = tm_jsonencode(let.network_config.storageAccounts)
            storageAccounts = let.network_config.storageAccounts
        }

        output "network_vnet_ids"{
            value = module.network.vnet_id
        }

        output "network_subnet_ids" {
            value = module.network.subnet_ids
        }

        output "storage_account_ids" {
            value = module.storageAccounts.storage_account_ids
        }
    }
}