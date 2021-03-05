terraform {
  backend "azurerm" {
    subscription_id      = "2ee6da9b-a647-401e-9408-ab64ec71fb25"
    resource_group_name  = "k8sdem-norg"
    storage_account_name = "newk8sstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}