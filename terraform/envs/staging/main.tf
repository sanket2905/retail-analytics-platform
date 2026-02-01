module "snowflake_core" {
  source = "../../modules/snowflake-core"
  account           = var.account
  user              = var.user
  role              = var.role
  private_key_path  = var.private_key_path
  warehouse_name    = var.warehouse_name
  database_name     = var.database_name
}


