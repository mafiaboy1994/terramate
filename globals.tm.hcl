# globals.tm.hcl
globals {
  config_template_file_variables = {
    default_location                = "your_default_location"
    default_postfix                 = "your_default_postfix"
    root_parent_management_group_id = "your_root_parent_management_group_id"
    subscription_id_connectivity    = "your_subscription_id_connectivity"
    subscription_id_identity        = "your_subscription_id_identity"
    subscription_id_management      = "your_subscription_id_management"
  }

  config = {
    connectivity = {
      spoke_networks = {
        "network1" = {
          virtual_network_name = "vnet1"
          location             = "uksouth"
          vnet_address_space   = "10.0.0.0/16"
          rg_name              = "rg-vnet1"
          subnet = {
            "subnet1" = {
              name           = "subnet1"
              address_prefix = "10.0.1.0/24"
            }
          }
        }
      }
    }
  }

  spoke_networking = {
    for key, network in global.config.connectivity.spoke_networks : key => {
      virtual_network_name = network.virtual_network_name
      location             = network.location
      vnet_address_space   = network.vnet_address_space
      rg_name              = network.rg_name
      subnet               = network.subnet
    }
  }
}