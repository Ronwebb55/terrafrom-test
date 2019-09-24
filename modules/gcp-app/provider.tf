provider "kubernetes" {
  host                   = "${var.cluster_hostname}"
  client_certificate     = "${base64decode(var.client_certificate)}"
  client_key             = "${base64decode(var.client_key)}"
  cluster_ca_certificate = "${base64decode(var.cluster_ca_certificate)}"
  config_path = "${var.config_path}"
}