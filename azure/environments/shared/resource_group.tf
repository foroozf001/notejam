resource "azurerm_resource_group" "resource_group_1" {
  name     = "${var.company}-${var.app_name}-${var.environment}-rg"
  location = var.location
  tags = {
    application = var.app_name
    environment = var.environment
  }
}