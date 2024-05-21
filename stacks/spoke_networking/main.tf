module "spoke_networking" {
  source = "../../spoke_networking"

  virtual_network_name = var.virtual_network_name
  location       = var.location
  rg_name = var.rg_name
  vnet_address_space   = var.vnet_address_space
}