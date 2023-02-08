resource "azurerm_mssql_managed_instance" "primary" {
  name                = local.sqlmi_names[0]
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location

  license_type       = "BasePrice"
  sku_name           = "GP_Gen5"
  storage_size_in_gb = 32
  subnet_id          = data.azurerm_subnet.this.id
  vcores             = 4

  administrator_login          = "${local.sqlmi_names[0]}admin"
  administrator_login_password = random_password.password.result

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}

resource "azurerm_mssql_managed_instance" "secondary" {
  count = var.enable_failover ? 1 : 0

  name                = local.sqlmi_names[1]
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location

  license_type       = "BasePrice"
  sku_name           = "GP_Gen5"
  storage_size_in_gb = 32
  subnet_id          = data.azurerm_subnet.this.id
  vcores             = 4

  administrator_login          = "${local.sqlmi_names[1]}admin"
  administrator_login_password = random_password.password.result

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}

