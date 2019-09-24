


resource "google_container_cluster" "slb_cluster" {
  provider = "google"
  name     = "${var.clusterName}"
  region = "${var.location}"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count = 1

  # Setting an empty username and password explicitly disables basic auth
  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
resource "google_container_node_pool" "slb_nodes" {
  provider = "google"
  name       = "${var.clusterName}"
  region   = "${var.location}"
  cluster    = "${google_container_cluster.slb_cluster.name}"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "${var.machineType}"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

# The following outputs allow authentication and connectivity to the GKE Cluster
# by using certificate-based authentication.

