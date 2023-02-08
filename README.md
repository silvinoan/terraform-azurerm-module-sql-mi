<!-- BEGIN_TF_DOCS -->
# Terraform Azure Module: MS SQL Managed Instance

Terraform module for AzureRM MS SQL Managed Instance.

[![Terraform Validate](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-validate.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-validate.yml)
[![Terraform Docs](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-docs.yml)
[![Checkov Validation](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/checkov.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/checkov.yml)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.30 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.30.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_mssql_managed_database.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_database) | resource |
| [azurerm_mssql_managed_instance.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance) | resource |
| [azurerm_mssql_managed_instance.secondary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance) | resource |
| [azurerm_mssql_managed_instance_active_directory_administrator.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance_active_directory_administrator) | resource |
| [azurerm_sql_managed_instance_failover_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_managed_instance_failover_group) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.networking](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_networking"></a> [networking](#input\_networking) | Networking information, Subnet, VNet and resource group. | <pre>object({<br>    vnet           = string<br>    snet           = string<br>    resource_group = string<br>  })</pre> | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group for the deployed resources | `string` | n/a | yes |
| <a name="input_ad_admin"></a> [ad\_admin](#input\_ad\_admin) | AD Admin object ID and username. | <pre>object({<br>    login_username = string<br>    object_id      = string<br>  })</pre> | <pre>{<br>  "login_username": "dbadmin",<br>  "object_id": "87a61c6e-ff4b-49d9-90ff-c38d59ab22fb"<br>}</pre> | no |
| <a name="input_critical_to_business_continuity"></a> [critical\_to\_business\_continuity](#input\_critical\_to\_business\_continuity) | If the resources are critical to business continuity. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment group for the deployed resources. | `string` | `"PRD1"` | no |
| <a name="input_management_group"></a> [management\_group](#input\_management\_group) | The management group for the deployed resources. | `string` | `"Banco Arbi"` | no |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | The purpose of the resources. | `string` | `"plt"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region for the deployed resources. | `string` | `"East US"` | no |
<!-- END_TF_DOCS -->
