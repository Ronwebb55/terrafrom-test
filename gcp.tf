

module "welcome-cluster" {
    source = "./modules/test-cluster"
    project = "cops-sandbox-1"
}
 resource "null_resource" "kubeconfig" {
     # ...
     provisioner "local-exec" {
      command = "gcloud beta container clusters get-credentials ${module.welcome-cluster.clustername} --region ${module.welcome-cluster.region} --project cops-sandbox-1"
     }
    
   }


module "welcome-app" {
    source = "./modules/gcp-app"
    client_certificate =  "${module.welcome-cluster.client_certificate}"
    client_key = "${module.welcome-cluster.client_key}"
    cluster_ca_certificate =  "${module.welcome-cluster.cluster_ca_certificate}"
    cluster_hostname =  "${module.welcome-cluster.cluster_hostname}"
}

module "vm-makes" {
    source = "./modules/gce-vms"
}

