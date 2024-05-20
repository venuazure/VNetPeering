


#virtual network-1
resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1-name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  depends_on          = [azurerm_resource_group.rg1]
  address_space       = ["10.0.0.0/16"]
}

#subnet-1-vnet1
resource "azurerm_subnet" "vnet1-sub-01" {
  name                 = var.vnet1_subent-1
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.1.0/24"]
  depends_on           = [azurerm_virtual_network.vnet1]

}


#virtual network-2
resource "azurerm_virtual_network" "vnet2" {
  name                = var.vnet2-name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  depends_on          = [azurerm_resource_group.rg1]
  address_space       = ["10.2.0.0/16"]
}

#subnet-1 vnet-2
resource "azurerm_subnet" "vnet2-sub-1" {
  name                 = var.vnet2_subent-1
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.2.3.0/24"]
  depends_on           = [azurerm_virtual_network.vnet2]

}
