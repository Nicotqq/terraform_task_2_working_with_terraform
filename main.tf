variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "blob_name" {
  type = string
}

resource "azurerm_storage_account" "example" {
  name                     = storage_account_name
  resource_group_name      = resource_group_name
  location                 = location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    owner = local.owner
  }
}
