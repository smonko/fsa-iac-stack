output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.fsa_aks.name
}

output "host" {
  value     = azurerm_kubernetes_cluster.fsa_aks.kube_config.0.host
  sensitive = true
}

output "client_key" {
  value     = azurerm_kubernetes_cluster.fsa_aks.kube_config.0.client_key
  sensitive = true
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.fsa_aks.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.fsa_aks.kube_config_raw
  sensitive = true
}

output "kube_config_raw" {
  value = nonsensitive(sha256(azurerm_kubernetes_cluster.fsa_aks.kube_config_raw))
}

output "cluster_username" {
  value     = azurerm_kubernetes_cluster.fsa_aks.kube_config.0.username
  sensitive = true
}
