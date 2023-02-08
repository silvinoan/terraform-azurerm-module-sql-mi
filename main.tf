/**
 * # Terraform Azure Module: MS SQL Managed Instance
 *
 * Terraform module for AzureRM MS SQL Managed Instance.
 *
 * [![Terraform Validate](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-validate.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-validate.yml)
 * [![Terraform Docs](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/terraform-docs.yml)
 * [![Checkov Validation](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/checkov.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-sql-mi/actions/workflows/checkov.yml)
 */

terraform {
  required_version = "~> 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.30"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4"
    }
  }
}
