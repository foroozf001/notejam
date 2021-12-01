resource "azurerm_subnet" "subnet_2" {
  name                                           = "${var.company}-${var.app_name}-${var.environment}-subnet-services"
  address_prefixes                               = [var.services_subnet_address_prefix]
  virtual_network_name                           = azurerm_virtual_network.virtual_network_1.name
  resource_group_name                            = var.resource_group_name
  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "subnet_1" {
  name                                           = "${var.company}-${var.app_name}-${var.environment}-subnet-aks"
  address_prefixes                               = [var.aks_subnet_address_prefix]
  virtual_network_name                           = azurerm_virtual_network.virtual_network_1.name
  resource_group_name                            = var.resource_group_name
  enforce_private_link_endpoint_network_policies = true
  service_endpoints                              = ["Microsoft.Sql", "Microsoft.Storage"]
}