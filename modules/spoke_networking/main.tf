provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "spoke_vnet" {
  name                = var.virtual_network_name
  location            = var.location
  address_space       = [var.vnet_address_space]
  resource_group_name = var.rg_name
  tags = {
    Name = var.virtual_network_name
  }
}

resource "azurerm_subnet" "spoke_subnet" {
  name                 = "${var.virtual_network_name}-subnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.spoke_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
