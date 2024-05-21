terraform {
  source = "git::https://github.com/mafiaboy1994/terramate.git//spoke_networking?ref=main"
}

inputs = {
  network_name = global.network_name
  region       = global.region
  cidr_block   = global.cidr_block
}