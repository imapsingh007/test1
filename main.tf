terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "AP-RG"
    storage_account_name = "adityastorage12345"
    container_name       = "ap-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "1b07d375-e28d-4dd8-9a73-6e18dd9f7b3c"
}




resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
