provider "azurerm" {
    features {
      
    }
  
}

module "terraform-azurerm-vm" {
    source = "git::https://github.com/subhashgaurav/terraform-azurerm-vm.git"

    rg_name = "rg-1"
    location = "east us"
    vNet_name = "vNet-1"
    subnet_name = "subnet-1"
    pulic_ip_name = "public-ip"
    nic_name = "nic-1"
    vm_name = "vm-1"
    os_disk_name = "os-disk"
    data_disk_name = "data-disk"




}