variable "ad_admin" {
  description = "AD Admin object ID and username."

  type = object({
    login_username = string
    object_id      = string
  })

  default = {
    login_username = "dbadmin"
    object_id      = "87a61c6e-ff4b-49d9-90ff-c38d59ab22fb"
  }
}

variable "management_group" {
  description = "The management group for the deployed resources."

  type     = string
  nullable = false
  default  = "Banco Arbi"
}

variable "environment" {
  description = "The environment group for the deployed resources."

  type     = string
  nullable = false
  default  = "PRD1"
}

variable "region" {
  description = "The region for the deployed resources."

  type     = string
  nullable = false
  default  = "East US"
}

variable "critical_to_business_continuity" {
  description = "If the resources are critical to business continuity."

  type     = bool
  nullable = true
  default  = false
}

variable "purpose" {
  description = "The purpose of the resources."

  type     = string
  nullable = false
  default  = "plt"
}

variable "resource_group" {
  description = "Resource group for the deployed resources"

  type     = string
  nullable = false
}

variable "networking" {
  description = "Networking information, Subnet, VNet and resource group."

  type = object({
    vnet           = string
    snet           = string
    resource_group = string
  })
}
