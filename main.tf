terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

variable "azregion" {
  type = string
}

variable "azgroup" {
  type = string
}

variable "azstorage" {
  type = string
}

variable "azcontainer" {
  type = string
}

variable "azblob_name" {
  type = string
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    owner = local.owner
  }
}
