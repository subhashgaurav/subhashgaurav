provider "azurerm" {
    features {
      
    }
  
}

module "terraform-application-gateway" {
    source = "git::https://github.com/subhashgaurav/terraform-application-gateway.git"

    #Subhash


}