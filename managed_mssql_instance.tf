resource "azurerm_mssql_managed_instance" "primary" {
  name                = local.sqlmi_names[0]
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location

  license_type       = "BasePrice"
  sku_name           = "GP_Gen5"
  storage_size_in_gb = 256
  subnet_id          = data.azurerm_subnet.this.id
  vcores             = 4
  collation          = "SQL_Latin1_General_CP1_CI_AI"

  administrator_login          = "${local.sqlmi_names[0]}admin"
  administrator_login_password = random_password.password.result

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}

