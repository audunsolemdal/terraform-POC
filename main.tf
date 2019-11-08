provider "azurerm" {
  version = "= 1.27"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "northeurope"
}
