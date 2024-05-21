// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "azurerm_virtual_network" "spoke_vnet" {
  address_space = [
    "10.0.0.0/16",
  ]
  location            = "us-west-2"
  name                = "spoke-network"
  resource_group_name = "my-resource-group"
  tags = {
    Name = "spoke-network"
  }
}
resource "azurerm_subnet" "spoke_subnet" {
  address_prefixes = [
    "10.0.1.0/24",
  ]
  name                 = "spoke-network-subnet"
  resource_group_name  = "spoke-network"
  virtual_network_name = azurerm_virtual_network.spoke_vnet.name
}
