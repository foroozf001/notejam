resource "azurerm_container_registry" "acr" {
  name                = "my${var.app_name}acr"
  resource_group_name = azurerm_resource_group.resource_group_1.name
  location            = azurerm_resource_group.resource_group_1.location
  sku                 = "Basic"
  admin_enabled       = true
  tags                = var.tags
}