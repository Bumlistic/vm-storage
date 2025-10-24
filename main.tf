resource "random_integer" "suffix" {
  min = 100
  max = 999
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-${random_integer.suffix.result}"
  location = var.location
  tags = {
    Environment = "Demo"
    CreatedWith = "Terraform"
  }
}

resource "azurerm_storage_account" "storage" {
  name                     = "${var.storage_account_name}${random_integer.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Demo"
    CreatedWith = "Terraform"
  }
}
