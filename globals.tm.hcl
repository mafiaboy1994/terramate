
globals {
  const_yaml = "yaml"
  const_yml = "yml"


  yaml_file = tm_yamldecode(tm_file("../../config.yaml"))

  spoke_networking = {
    for key, network in global.yaml_file.connectivity.spoke_networks : key => {
      virtual_network_name = network.virtual_network_name
      location = network.location
      vnet_address_space = network.vnet_address_space
      rg_name = network.rg_name
      subnets = network.subnets
    }
  }

  # storage_accounts = {
  #   for key, account in global.yaml_file.connectivity.storageAccounts : key => {
  #     sa_name = account.sa_name
  #     resource_group_name = global.spoke_networking[key].rg_name
  #     location = global.spoke_networking[key].location
  #     account_tier = account.account_tier
  #     account_replication_type = account.account_replication_type
  #   }
  # }


}