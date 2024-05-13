
variable "location" {
    type = string
    default = "uksouth"
}

variable "virtual_network_name" {
    type = string
}

variable "rg_name" {
    type = string
}

variable "vnet_address_space" {
    type = list(string)
}