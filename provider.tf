terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.60.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    subscription_id =  "f90d25ee-e9c6-48de-be92-4639b8ffe74d"
  }
}