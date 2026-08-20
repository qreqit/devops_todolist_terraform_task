variable "location" {
  type        = string
  description = "The Azure region where resources will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "vnet_address_prefix" {
  type        = string
  description = "The address prefix for the Virtual Network."
}

variable "subnet_name" {
  type        = string
  description = "The name of the Subnet."
}

variable "subnet_address_prefix" {
  type        = string
  description = "The address prefix for the Subnet."
}

variable "network_security_group_name" {
  type        = string
  description = "The name of the Network Security Group."
}

variable "public_ip_address_name" {
  type        = string
  description = "The name of the Public IP resource."
}

variable "dns_label" {
  type        = string
  description = "The DNS label prefix for the public IP."
}