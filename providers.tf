# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = "2ee6da9b-a647-401e-9408-ab64ec71fb25"
  # client_id       = "27391fe5-8f5f-4bd7-b891-c28753f5abf2"
  # client_secret   = "Vx16CeDN4fuv_1k5Zs4vnS37~YG~.EK8L."
  # tenant_id       = "0dc069a3-cd7d-49f7-bd71-4ebf572249f3"
}
