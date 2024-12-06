resource "azurerm_storage_account" "saexample" {
  name                     = var.sa_name //"storagetfminimal"
  resource_group_name      = var.sa_rgname //"rg-fsapps-backstage"
  location                 = var.sa_location //"East US"
  account_tier             = var.sa_account_tier //"Standard"
  account_replication_type = var.sa_account_replication_type //"LRS"
}

# Dynamically assign the tfstate file name to match the resource name
output "tfstate_file_name" {
  value = "${azurerm_storage_account.saexample.name}.tfstate"
}
