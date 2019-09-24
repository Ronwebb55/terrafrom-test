output "client_certificate" {
  value = "${module.azure-welcome-cluster.client_certificate}"
}

output "client_key" {
 value = "${module.azure-welcome-cluster.client_key}"
}

output "cluster_ca_certificate" {
  value = "${module.azure-welcome-cluster.cluster_ca_certificate}"
}
output "cluster_hostname" {
  value = "${module.azure-welcome-cluster.cluster_fqdn}"
}