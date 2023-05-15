provider "azurerm" {
    features {
      
    }
  
}

module "terraform-azurerm-storage" {
    source = "git::https://github.com/subhashgaurav/terraform-azurerm-storage.git"

    rg_name = "rg-1"
    location = "east us"
    sa_name = "subhash87654321"




}