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
