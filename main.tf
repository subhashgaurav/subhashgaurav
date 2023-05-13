provider "azurerm" {
    features {
      
    }
  
}

module "terraform-azurerm-rg" {
    source = "git::https://github.com/subhashgaurav/terraform-azurerm-rg.git"

    rg_name = "rg-1"
    location = "east us"
  
}