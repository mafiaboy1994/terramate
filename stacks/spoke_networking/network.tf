// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "azurerm_virtual_network" "spoke_vnet" {
  address_space = [
    "10.0.0.0/16",
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
  resource_group_name  = "vnet-ebws-test-network"
  virtual_network_name = azurerm_virtual_network.spoke_vnet.name
}
