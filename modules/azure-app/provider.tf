provider "kubernetes" {
  host                   =   "https://${var.cluster_hostname}"
 // client_id = "bf3aa94d-860c-4559-803a-58185df39195"
 // client_secret = "k8=tW1T_BStH*C:PXOwXGvVoY2nRUdk7"
 // username               =   "${var.username}"
  //password               =   "${var.password}"
 //client_certificate     = "${var.client_certificate}"
 //client_key             = "${var.client_key}"
//cluster_ca_certificate = "${var.cluster_ca_certificate}"
 //config_path            = "${var.config_path}"
 token                  = "${var.token}"
 //config_context        = "acctestaks1"
}