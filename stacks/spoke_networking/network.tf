// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "azurerm_resource_group" "vnet_rg" {
  location = "uksouth"
  name     = "tm-vnet-rg"
}
resource "azurerm_virtual_network" "spoke_vnet" {
  address_space = [
    "10.0.0.0/16",
  ]
  depends_on = [
    azurerm_resource_group.vnet_rg,
  ]
  location            = "uksouth"
  name                = "vnet-ebws-test-network"
  resource_group_name = "tm-vnet-rg"
  tags = {
    Name = "vnet-ebws-test-network"
  }
}
resource "azurerm_subnet" "spoke_subnet" {
  address_prefixes = [
    "10.0.1.0/24",
  ]
  name                 = "vnet-ebws-test-network-subnet"
  resource_group_name  = "tm-vnet-rg"
  virtual_network_name = azurerm_virtual_network.spoke_vnet.name
}
