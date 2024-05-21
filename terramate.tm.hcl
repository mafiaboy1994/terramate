# Specific configuration of Terramate goes in the terramate block
terramate {
}

# We can declare common modules to import for every stack here.
# We can do it also in stacks directory, but not both ;)

import {
  source = "/terramate/common_files/backend.tm.hcl"
}

import {
  source = "/terramate/common_files/required_providers.tm.hcl"
}

# It will automatically import globals.tm.hcl
# It will fetch all globals block in the *.tm.hcl on the path to merge them and generate code
# You can get informations on it with `terramate debug show globals`

# It is possible to declare them here
# globals {
#   virtual_network_name = "spoke-network"
#   location             = "us-west-2"
#   vnet_address_space   = "10.0.0.0/16"
#   rg_name              = "my-resource-group"
# }