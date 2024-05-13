
module "networking" {
    source = "./spoke_networking"
    virtual_network_name = var.virtual_network_name
    rg_name = var.rg_name
    location = var.location
    vnet_address_space = var.vnet_address_space
}




