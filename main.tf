resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "northeurope"
}

module "web_app" {
  source = "innovationnorway/web-app/azurerm"

  name = "tf-pof"

  resource_group_name = azurerm_resource_group.example.name

  runtime = {
    name    = "dotnetcore"
    version = "3.0"
  }
}
