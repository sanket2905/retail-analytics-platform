provider "snowflake" {
  account  = var.account
  username     = var.user
  role     = var.role
  private_key = var.private_key_path
  authenticator = "SNOWFLAKE_JWT"
}

resource "snowflake_database" "analytics" {
  name = var.database_name
}

resource "snowflake_warehouse" "wh" {
  name           = var.warehouse_name
  warehouse_size = "XSMALL"
  auto_suspend   = 60
}
