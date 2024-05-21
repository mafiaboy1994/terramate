stack {
  name        = "spoke_networking3"
  description = "spoke_networking3"
  id          = "503e17d7-175f-42f7-89b9-cf031c049bb8"
}

# We will import the terraform.tfvars, that allows to define the value of variables
import {
  source = "/terramate/modules/network/tfvars.tm.hcl"
}