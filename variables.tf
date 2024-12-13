variable "sa_name" {
  type        = string
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group"
}
variable "sa_rgname" {
  type        = string
  description = "The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  default     = "fs-coe-proctor-test"
}
variable "sa_location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "sa_account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}
variable "sa_account_replication_type" {
  type        = string
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
}

variable "tfstate_file_name" {
  description = "Name of the Terraform state file"
  type        = string
  default     = "default.tfstate" # Fallback default
}
