terraform {
  backend "azurerm" {
    resource_group_name  = "self-hosted-agent-storage-infra-rg"
    storage_account_name = "selfhostagentstorage"
    container_name       = "selfhost-container"
    key                  = "selfhost-storage.tfstate"
  }
}
