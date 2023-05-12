provider "azurerm" {
    features {}
      
    }


resource "azurerm_resource_group" "az-rg-1" {
  name     = "RG-1"
  location = "east us"
}
