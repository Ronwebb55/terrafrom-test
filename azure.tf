module "azure-welcome-cluster" {
    source = "./modules/azure-cluster"
    
}

 resource "null_resource" "kubeconfig-azure" {
     # ...
     provisioner "local-exec" {
      command = "az aks get-credentials --name ${module.azure-welcome-cluster.cluster_hostname} --resource-group acctestRG1 "
     }
    
   }


module "welcome-app-azure" {
    source = "./modules/azure-app"
    client_certificate =  "${module.azure-welcome-cluster.client_certificate}"
    client_key = "${module.azure-welcome-cluster.client_key}"
    cluster_ca_certificate =  "${module.azure-welcome-cluster.cluster_ca_certificate}"
    cluster_hostname =  "${module.azure-welcome-cluster.cluster_fqdn}"
    config_path  = "testers"
    token = "${module.azure-welcome-cluster.cluster_token}"
    username = "${module.azure-welcome-cluster.cluster_username}"
    password = "${module.azure-welcome-cluster.cluster_password}"
}

module "vm-makes-azure" {
    source = "./modules/azure-vms"
}