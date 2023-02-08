resource "azurerm_mssql_managed_database" "this" {
  for_each = var.databases

  name                = each.key
  managed_instance_id = azurerm_mssql_managed_instance.primary.id
}
