terramate {
  # This defines the stack and assigns it to a specific module
  stack {
    name = "spoke_networking"
    description = "Stack for spoke networking"
    dir = "stacks/spoke_networking"
  }

  # Define the modules used by this stack
  modules {
    # Linking to the spoke_networking module
    source = "../../spoke_networking"

    #Reference the globals in the module config
    virtual_network_name = global.virtual_network_name
    location = gloabl.location
    vnet_address_space = global.vnet_address_space
    rg_name = global.rg_name
  }
}
