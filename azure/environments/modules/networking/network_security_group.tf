resource "azurerm_network_security_group" "network_security_group_1" {
  name                = "${var.company}-${var.app_name}-${var.environment}-nsg"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
