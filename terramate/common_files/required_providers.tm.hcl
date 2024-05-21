globals "providers" "azurerm" {
  source  = "hashicorp/azurerm"
  version = "3.104.2"
}


generate_hcl "required.providers.tf" {
  content {
    terraform {
      # Beware, you can have only 1 block required_providers.  So you will need a strategy to handle it !
      required_providers {
        azurerm = {
          source  = global.providers.azurerm.source
          version = global.providers.azurerm.version
        }
      }
    }

    # A small example of tm_dynamic
    # You can decide when to write a block or not.
    tm_dynamic "provider" {
      condition = tm_contains(terramate.stack.tags, "azurerm")
      labels    = ["azurerm"]
      content {
        features {
          
        }
      }
    }
  }
}