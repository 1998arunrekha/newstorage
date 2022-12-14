resource "azurerm_resource_group" "rg" {
  name     = "rg04"
  location = "West Europe"
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "demostorage0077"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "production"
  }
}