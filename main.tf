provider "azurerm" {
    features {
      
    }
  
}

module "terraform-azurerm-rg" {
    source = "git::https://github.com/subhashgaurav/terraform-azurerm-vNet.git"

    rg_name = "rg-1"
    location = "east us"
    vNet_name = "vNet-1"
    vNet_name = "subnet-1"
  
}