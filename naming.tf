locals {
  sqlmi_names = formatlist("${local.sqlmi_name}%s", local.ids)

  sqlmi_name = "${local.management_group}${local.environment}sqlmi${local.region}${local.critical_to_business_continuity}${local.purpose}"

  management_groups = {
    "Banco Arbi"     = "ab"
    "Jazz Tech"      = "jt"
    "Cross Platform" = "cs"
  }

  management_group = local.management_groups[var.management_group]

  environments = {
    "DEV1" = "d1"
    "QA1"  = "q1"
    "HML1" = "h1"
    "SDX1" = "s1"
    "PRD1" = "p1"
  }

  environment = local.environments[var.environment]

  regions = {
    "East US" = "eaus1"
  }

  region = local.regions[var.region]

  critical_to_business_continuity = var.critical_to_business_continuity ? "cr" : "nc"

  purpose = substr(lower(var.purpose), 0, 3)

  ids = ["001", "002"]
}
