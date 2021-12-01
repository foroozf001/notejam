resource "azurerm_log_analytics_workspace" "log_analytics_1" {
  name                = "${var.company}-${var.app_name}-${var.environment}-logs"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.tags
}