variable "location" {
  type        = string
  description = "The Azure region where resources will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "vm_name" {
  type        = string
  description = "The name of Virtual Machine."
}

variable "vm_size" {
  type        = string
  description = "The SKU size of the Virtual Machine."
}

variable "ssh_key_public" {
  type        = string
  description = "The public SSH key content for VM authentication."
  sensitive   = true
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet created by the network module."
}

variable "public_ip_id" {
  type        = string
  description = "ID of the public IP created by the network module."
}

variable "my_ip" {
  type        = string
  description = "My public IP for SSH access"
}

variable "admin_username" {
  type = string
  description = "VM admin username"
}