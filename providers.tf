# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 1.2.0"
    }
  }
}