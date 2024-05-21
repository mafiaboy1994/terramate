generate_hcl "network.tf" {
  content {
    resource "azurerm_virtual_network" "spoke_vnet" {
      name                = global.virtual_network_name
      location            = global.location
      address_space       = [global.vnet_address_space]
      resource_group_name = global.rg_name
      tags = {
        Name = global.virtual_network_name
      }
    }

    resource "azurerm_subnet" "spoke_subnet" {
      name                 = "${global.virtual_network_name}-subnet"
      resource_group_name  = global.virtual_network_name
      virtual_network_name = azurerm_virtual_network.spoke_vnet.name
      address_prefixes     = ["10.0.1.0/24"]
    }

  }
}

