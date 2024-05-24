generate_hcl "main.tf" {
    lets {
        network_config = {
            spoke_networking = global.spoke_networking
        }
        }
    content {
        module "network" {
            source = "../../modules/network"
            spoke_networking = let.network_config.spoke_networking
        }
    }
}