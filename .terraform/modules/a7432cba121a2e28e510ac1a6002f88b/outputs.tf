output "client_certificate" {
  value = "${base64decode(azurerm_kubernetes_cluster.test1.kube_config.0.client_certificate)}"
}
output "client_key" {
  value = "${base64decode(azurerm_kubernetes_cluster.test1.kube_config.0.client_key)}"
}

output "cluster_ca_certificate" {
  value = "${base64decode(azurerm_kubernetes_cluster.test1.kube_config.0.cluster_ca_certificate)}"

}
output "cluster_token" {
  value = "${azurerm_kubernetes_cluster.test1.kube_config.0.token}"

}
output "cluster_hostname" {
  value = "${azurerm_kubernetes_cluster.test1.kube_config.0.host}"
}
output "cluster_fqdn" {
  value = "${azurerm_kubernetes_cluster.test1.fqdn}"
}

output "cluster_username" {
  value = "${azurerm_kubernetes_cluster.test1.kube_config.0.username}"
}

output "cluster_password" {
  value = "${azurerm_kubernetes_cluster.test1.kube_config.0.password}"
}
output "kube_config" {
  value = "${azurerm_kubernetes_cluster.test1.kube_config_raw}"
}