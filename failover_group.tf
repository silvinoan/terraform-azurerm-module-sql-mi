resource "azurerm_sql_managed_instance_failover_group" "this" {
  count = var.enable_failover ? 1 : 0

  name                        = local.sqlmi_name
  resource_group_name         = data.azurerm_resource_group.this.name
  location                    = azurerm_sql_managed_instance.primary.location
  managed_instance_name       = azurerm_sql_managed_instance.primary.name
  partner_managed_instance_id = azurerm_sql_managed_instance.secondary.id

  read_write_endpoint_failover_policy {
    mode          = "Automatic"
    grace_minutes = 60
  }
}
