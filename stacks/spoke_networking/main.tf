resource "azurerm_virtual_network" "vnet" {
    name = var.virtual_network_name
    resource_group_name = var.rg_name
    location = var.location
    address_space = var.vnet_address_space
}

resource "azurerm_resource_group" "rg" {
    name = var.rg_name
    location = var.location
}