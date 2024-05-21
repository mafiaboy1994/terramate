generate_hcl "terraform.tfvars" {
    content {
        virtual_network_name = global.virtual_network_name
        location = global.location
        vnet_address_space = global.vnet_address_space
        rg_name = global.rg_name
    }
}