stack {
  name        = "spoke_networking"
  description = "spoke_networking"
  tags        = ["azurerm"]
  id          = "3e1194dc-fe00-447e-8aad-1075c254b4c9"
}

import {
  source = "/modules/network/network.tm.hcl"
}

import {
  source = "/modules/network/variables.tm.hcl"
}

import {
  source = "/modules/storageAccounts/storageAccounts.tm.hcl"
}
