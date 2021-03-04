terraform {
  backend "azurerm" {
    resource_group_name  = "k8sdemorg"
    storage_account_name = "k8sterraformstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}