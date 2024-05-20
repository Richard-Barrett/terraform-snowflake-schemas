terraform {
  required_version = ">= 1.5.7"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.91.0"
    }
  }
}

resource "snowflake_schema" "this" {
  database            = var.database
  name                = var.schema_name
  comment             = var.comment
  is_transient        = var.is_transient
  is_managed          = var.is_managed
  data_retention_days = var.data_retention_days
}

resource "snowflake_schema_grant" "this" {
  database_name          = var.database
  schema_name            = var.schema_name
  privilege              = var.privilege
  roles                  = var.roles
  shares                 = var.shares
  enable_multiple_grants = var.enable_multiple_grants
  on_future              = var.on_future
  on_all                 = var.on_all
  with_grant_option      = var.with_grant_option
}
