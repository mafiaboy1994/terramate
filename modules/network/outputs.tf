output "vnet_id" {
    value = { for key, ids in azurerm_virtual_network.spoke_vnet : key => ids.id}
}

# output "subnet_ids"{
#     value = {for key, ids in azurerm_virtual_network.spoke_vnet : key => ids.subnet.id}
# }

output "subnet_ids" {
  value = {
    for vnet_key, vnet in azurerm_virtual_network.spoke_vnet : vnet_key => {
      for subnet in vnet.subnet : subnet.name => subnet.id
    }
  }
}