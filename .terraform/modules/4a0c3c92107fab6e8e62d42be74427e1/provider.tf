# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  tenant_id = "41ff26dc-250f-4b13-8981-739be8610c21"
  subscription_id = "249a395b-690a-486f-a3ab-883be039bf47"
  version = "=1.28.0"
 
}

resource "azurerm_resource_group" "test" {
  name     = "acctestRG1"
  location = "East US"
}