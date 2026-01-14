variable "client_secret" {
}

# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstateRG01"
    storage_account_name = "tfstatestorge001"
    container_name       = "tfstate001"
    key                  = "terraform.tfstate"
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "3e2e65e3-b3b4-43cb-a191-d7675305baf8"
  client_secret   = "sYz8Q~_dRoTb9yse_aVhUgJ4.vvOPBrO8aGDdb7Y"
  tenant_id       = "8df9ee4f-be5e-4c7a-95d7-8de5dd92bc88"
  subscription_id = "d827ab92-b9a4-4510-85c7-be26b916b9d0"
}
resource "azurerm_resource_group" "example202" {
  name     = "example-resources202"
  location = "West Europe"
}
