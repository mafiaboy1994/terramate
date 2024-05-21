stack {
  name        = "spoke_networking"
  description = "Spoke Sub Networking"
  id          = "a68754d2-4f36-4b83-ab41-abd5e1d2eb22"
  tags        = ["azurerm"]
}

# Here we import the module we want + the modules that are declared in parent directories
# In this case : backend.tf + network.tf + required.providers.tf
import {
  source = "/terramate/modules/network/network.tm.hcl"
}