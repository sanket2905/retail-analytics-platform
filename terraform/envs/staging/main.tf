module "snowflake_core" {
  source = "../../modules/snowflake-core"
  account           = var.account
  user              = var.user
  role              = var.role
  region            = var.region
  private_key_path  = var.private_key_path

  database_name     = "RETAIL_ANALYTICS_STG"
  warehouse_name    = "RETAIL_WH_STG"
}


