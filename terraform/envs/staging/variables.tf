variable "account" {}
variable "user" {}
variable "role" {}
variable "private_key_path" {
    sensitive = true
}
variable "database_name" {}
variable "warehouse_name" {}
