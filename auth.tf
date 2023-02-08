resource "azurerm_mssql_managed_instance_active_directory_administrator" "this" {
  managed_instance_id         = azurerm_mssql_managed_instance.this.id
  login_username              = var.ad_admin.login_username
  object_id                   = var.ad_admin.object_id
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  azuread_authentication_only = true
}

resource "random_password" "password" {
  length      = 16
  min_lower   = 1
  min_upper   = 1
  min_numeric = 1
  min_special = 1
}
