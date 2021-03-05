terraform {
  backend "azurerm" {
    resource_group_name  = "k8sdem-norg"
    storage_account_name = "newk8sstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}