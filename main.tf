module "storage_account" {
  source                      = "./tfmodules/storage"
  sa_name                     = var.sa_name 
  sa_rgname                   = var.sa_rgname
  sa_location                 = var.sa_location
  sa_account_tier             = var.sa_account_tier
  sa_account_replication_type = var.sa_account_replication_type
}
