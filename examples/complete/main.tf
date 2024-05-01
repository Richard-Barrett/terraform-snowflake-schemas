terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.89.0"
    }
  }
}

provider "snowflake" {}

module "snowflake_schema_test" {
  source = "../.."

  database    = "TEST"
  schema_name = "TEST"
}
