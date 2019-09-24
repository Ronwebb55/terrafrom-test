

resource "azurerm_kubernetes_cluster" "test1" {
  name                = "acctestaks1"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  dns_prefix          = "acctestagent1"

  agent_pool_profile {
    name            = "default"
    count           = 3
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

 
  service_principal {
    client_id     = "bf3aa94d-860c-4559-803a-58185df39195"
    client_secret = "k8=tW1T_BStH*C:PXOwXGvVoY2nRUdk7"
  }


  role_based_access_control  {
    enabled = false
  }
  tags = {
    Environment = "dev"
  }
}

