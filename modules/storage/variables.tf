variable "location" {
  type        = string
  description = "The Azure region where resources will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name."
}

variable "storage_container_name" {
  type        = string
  description = "Storage container name."
}