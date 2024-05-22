
generate_hcl "variables.tf" {
  content {
     variable "spoke_networking" {
      type = map(object({
        virtual_network_name = string
        location             = string
        vnet_address_space   = string
        rg_name              = string
        subnet               = map(object({
          address_prefix = string
          name           = string
        }))
      }))
      default = global.spoke_networking
    }
  }
}