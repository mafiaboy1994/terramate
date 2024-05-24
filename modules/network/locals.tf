locals {
    subnets_flatlist = flatten([for key, val in var.spoke_networking :[
        for subnet in val.subnets : {
            vnet_name = key
            resource_group_name = val.rg_name
            subnet_name = subnet.name
            subnet_address = subnet.address_prefix
        }
    ]])

    subnets = { for subnet in local.subnets_flatlist : subnet.subnet_name => subnet}

    nsg_flatlist = flatten([ for key, val in var.spoke_networking : [
        for subnet in val.subnets : {
            vnet_name = key 
            resource_group_name = val.rg_name 
            subnet_name = subnet.name 
            location = val.location
            nsgs = subnet.nsgs
        }
    ]
    ])

    nsgs = { for nsg in local.nsg_flatlist : nsg.subnet_name => nsg}
}