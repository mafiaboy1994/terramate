generate_hcl "storageAccounts.tf" {
  content {
    resource "azurerm_storage_account" "storageExample"{
        for_each = var.storageAccounts
        name = each.value.sa_name
        resource_group_name = each.value.resource_group_name
        location = each.value.location
        account_tier = each.value.account_tier
        account_replication_type = each.value.account_replication_type
    }
  }
}