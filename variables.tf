variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Service Principal App (client) ID"
  type        = string
}

variable "client_secret" {
  description = "Service Principal Password / Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Canada Central"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg-demo"
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
  default     = "stgaccdemo"
}
