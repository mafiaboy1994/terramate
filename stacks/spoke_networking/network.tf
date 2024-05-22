// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "azurerm_resource_group" "vnet_rg" {
  for_each = var.spoke_networking
  location = each.value.location
  name     = "${each.value.rg_name}"
}
resource "azurerm_virtual_network" "spoke_vnet" {
  address_space = [
    each.value.vnet_address_space,
  ]
  depends_on = [
    azurerm_resource_group.vnet_rg,
  ]
  for_each            = var.spoke_networking
  location            = each.value.location
  name                = each.value.virtual_network_name
  resource_group_name = each.value.rg_name
  tags = {
    Name = each.value.virtual_network_name
  }
  dynamic "subnet" {
    for_each = each.value.subnet
    content {
      address_prefix = subnet.value.address_prefix
      name           = subnet.value.name
    }
  }
}
