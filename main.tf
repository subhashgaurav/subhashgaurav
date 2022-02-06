provider azurerm{
    features {}  
    
    
}


module "azure-nsg" {
  source = "git::https://github.com/andrewCluey/terraform-azurerm-nsg.git"

  resource_group_name = "rg-temp"
  location = "West India"
  nsg_name = "temp2"
   security_rules      = [
       {
            name                       = "W32Time",
            priority                   = "100"
            direction                  = "Inbound"
            access                     = "Allow"
            protocol                   = "UDP"
            source_port_range          = "*"
            destination_port_range     = "123"
            source_address_prefix      = "*"
            destination_address_prefix = "*"
        },
        {
            name                       = "TLS_IN",
            priority                   = "110"
            direction                  = "Inbound"
            access                     = "Allow"
            protocol                   = "TCP"
            source_port_range          = "*"
            destination_port_range     = "443"
            source_address_prefix      = "*"
            destination_address_prefix = "*"
        },
         {
            name                       = "WEB_OUT",
            priority                   = "120"
            direction                  = "Outbound"
            access                     = "Allow"
            protocol                   = "TCP"
            source_port_range          = "*"
            destination_port_ranges    = ["80", "443"]
            source_address_prefix      = "*"
            destination_address_prefix = "*"
        }
    ]

    tags = {"env" = "POC"}




}
