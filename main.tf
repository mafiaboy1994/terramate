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
}

# Ensure the variable is populated correctly
output "spoke_networking" {
  value = var.spoke_networking
}