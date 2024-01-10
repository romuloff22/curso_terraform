resource "azurerm_resource_group" "resource_group" {
  name     = "rg-terraform-state-romuloff"
  location = var.location

  tags = local.comom_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "storagestate"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true

  }

  tags = local.comom_tags
}

resource "azurerm_storage_container" "container" {
  name                  = "remote-state-romuloff"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}