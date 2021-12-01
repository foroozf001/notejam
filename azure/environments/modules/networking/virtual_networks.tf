# This vnet contains subnets for: services, aks, redis and firewall
resource "azurerm_virtual_network" "virtual_network_1" {
  name                = "${var.company}-${var.app_name}-${var.environment}-vnet-aks"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = [var.services_subnet_address_prefix, var.aks_subnet_address_prefix]
}