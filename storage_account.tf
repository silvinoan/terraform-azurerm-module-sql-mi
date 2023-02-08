resource "azurerm_storage_account" "this" {
  name                     = "accteststorageaccount"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "example" {
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}
