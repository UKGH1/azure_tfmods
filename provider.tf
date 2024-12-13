terraform {
  backend "azurerm" {
    resource_group_name  = "fs-coe-proctor-test"
    storage_account_name = "stgaccnttfstate01"
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
