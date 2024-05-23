// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "azurerm_storage_account" "storageExample" {
  account_replication_type = each.value.account_replication_type
  account_tier             = each.value.account_tier
  for_each                 = var.storageAccounts
  location                 = each.value.location
  name                     = each.value.sa_name
  resource_group_name      = each.value.resource_group_name
}
