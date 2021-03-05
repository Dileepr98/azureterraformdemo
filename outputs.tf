output "aks_id" {
  value = azurerm_kubernetes_cluster.aks_test_cluster.id
}

output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.aks_test_cluster.fqdn
}

output "aks_node_rg" {
  value = azurerm_kubernetes_cluster.aks_test_cluster.node_resource_group
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.aks_test_cluster.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_test_cluster.kube_config_raw
}

output "acr_login_server" {
  value = azurerm_container_registry.acr_test.login_server
}