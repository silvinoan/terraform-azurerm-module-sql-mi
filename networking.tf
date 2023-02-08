data "azurerm_resource_group" "networking" {
  name = var.networking.resource_group
}

data "azurerm_virtual_network" "this" {
  name                = var.networking.vnet
  resource_group_name = data.azurerm_resource_group.networking
}

data "azurerm_subnet" "this" {
  name                 = var.networking.snet
  virtual_network_name = data.azurerm_virtual_network.this
  resource_group_name  = data.azurerm_resource_group.networking
}
