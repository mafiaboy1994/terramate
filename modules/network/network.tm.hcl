generate_hcl "network.tf" {
  content {
    resource "azurerm_resource_group" "vnet_rg"{
        for_each = var.spoke_networking
      name = "${each.value.rg_name}"
      location = each.value.location
    }

    resource "azurerm_virtual_network" "spoke_vnet" {
      depends_on = [ azurerm_resource_group.vnet_rg ]
      for_each = var.spoke_networking
      
      name                = each.value.virtual_network_name
      location            = each.value.location
      address_space       = [each.value.vnet_address_space]
      resource_group_name = each.value.rg_name
      tags = {
        Name = each.value.virtual_network_name
      }
      dynamic "subnet" {
        for_each = each.value.subnet
        content {
          name = subnet.value.name
          address_prefix = subnet.value.address_prefix
        }
      }
    }
  }
}