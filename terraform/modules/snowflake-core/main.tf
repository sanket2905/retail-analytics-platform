provider "snowflake" {
  account  = var.account
  username     = var.user
  role     = var.role
  region   = var.region
  private_key = file(var.private_key_path)
}

resource "snowflake_database" "analytics" {
  name = var.database_name
}

resource "snowflake_warehouse" "wh" {
  name           = var.warehouse_name
  warehouse_size = "XSMALL"
  auto_suspend   = 60
}
