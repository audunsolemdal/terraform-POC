provider "azurerm" {
  version = "= 1.27"
}

terraform {
  required_version ">= 0.11.7"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "northeurope"
}
