resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "test" {}


resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = "${data.azurerm_subscription.primary.id}"
  role_definition_name             = "Contributor"
  principal_id                     = "${data.azurerm_client_config.test.service_principal_object_id}"
  skip_service_principal_aad_check = true
}

resource "azurerm_container_registry" "acr_test" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = false
}

resource "azurerm_kubernetes_cluster" "aks_test_cluster" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.cluster_name
  node_resource_group = var.node_resource_group

  default_node_pool {
    name                = "default"
    node_count          = var.system_node_count
    vm_size             = "Standard_D2_v2"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet" # CNI
  }

  tags = {
    Environment = "Development"
  }
}