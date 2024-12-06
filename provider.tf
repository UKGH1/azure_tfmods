terraform {
  backend "azurerm" {
    resource_group_name  = "rg-fsapps-backstage"
    storage_account_name = "devbackstagepoclogsmnfpq"
    container_name       = "tfstate-viabackstage"
    key                  = "stgacct.tfstate" //"${var.tfstate_file_name}"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.91.0"
    }
  }
}

provider "azurerm" {
  features {}
}
