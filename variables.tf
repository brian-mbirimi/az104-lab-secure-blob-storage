variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "UK South"
}

variable "resource_group_name" {
  description = "Resource group for the storage lab"
  type        = string
  default     = "rg-az104-secure-blob-lab"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-az104-secure-blob"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.50.0.0/16"]
}

variable "private_endpoint_subnet_name" {
  description = "Subnet name for private endpoints"
  type        = string
  default     = "snet-private-endpoints"
}

variable "private_endpoint_subnet_prefix" {
  description = "Subnet address prefix for private endpoints"
  type        = string
  default     = "10.50.10.0/24"
}

variable "storage_account_name_prefix" {
  description = "Prefix for the storage account name (lowercase only)"
  type        = string
  default     = "staz104blob"
}
