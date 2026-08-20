variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
  default     = "austriaeast"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
  default     = "portfolio-greqit-resources"
}

variable "virtual_network_name" {
  type        = string
  description = "The name of the Virtual Network."
  default     = "portfolio-vnet"
}

variable "vnet_address_prefix" {
  type        = string
  description = "The address prefix for the Virtual Network."
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  type        = string
  description = "The name of the Subnet."
  default     = "portfolio-subnet"
}

variable "subnet_address_prefix" {
  type        = string
  description = "The address prefix for the Subnet."
  default     = "10.0.0.0/24"
}

variable "network_security_group_name" {
  type        = string
  description = "The name of the Network Security Group."
  default     = "portfolio-nsg"
}

variable "public_ip_address_name" {
  type        = string
  description = "The name of the Public IP resource."
  default     = "portfolio-linuxboxpip"
}

variable "vm_name" {
  type        = string
  description = "The name of the Virtual Machine."
  default     = "matebox"
}

variable "vm_size" {
  type        = string
  description = "The size/SKU of the Virtual Machine."
  default     = "Standard_B2ats_v2"
}

variable "ssh_key_public" {
  type        = string
  description = "The public SSH key content for VM authentication."
}

variable "dns_label" {
  type        = string
  description = "The DNS label prefix for the public IP."
  default     = "portfoliotofoapp"
}

variable "storage_account_name" {
  type        = string
  description = "Storage account name."
  default     = "portfoliostorage"
}

variable "storage_account_name_app" {
  type        = string
  description = "Storage account name."
  default     = "portfoliostorageapp"
}

variable "storage_container_name" {
  type        = string
  description = "Storage container name."
  default     = "portfolip-task-artifacts"
}

variable "my_ip" {
  type        = string
  description = "Public IP for SSH access"
}

variable "admin_username" {
  type        = string
  description = "Admin username for vm"
}