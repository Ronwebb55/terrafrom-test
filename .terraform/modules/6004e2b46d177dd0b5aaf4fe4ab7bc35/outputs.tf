output "client_certificate" {
  value = "${google_container_cluster.slb_cluster.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.slb_cluster.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.slb_cluster.master_auth.0.cluster_ca_certificate}"
}
output "cluster_hostname" {
  value = "${google_container_cluster.slb_cluster.endpoint}"
}


output "cluster_username" {
  value = "${google_container_cluster.slb_cluster.master_auth.0.username}"
}

output "cluster_password" {
  value = "${google_container_cluster.slb_cluster.master_auth.0.password}"
}


output "instance_group_urls" {
  value = "${google_container_cluster.slb_cluster.instance_group_urls}"
}

output "node_config" {
  value = "${google_container_cluster.slb_cluster.node_config}"
}
output "clustername" {
  value = "${google_container_cluster.slb_cluster.id}"
}
output "region" {
  value = "${google_container_cluster.slb_cluster.region}"
}