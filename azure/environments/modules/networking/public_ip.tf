resource "azurerm_public_ip" "public_ip_1" {
  name                = "${var.company}-${var.app_name}-${var.environment}-public-ip"
  location            = var.resource_group_location
  domain_name_label   = "${var.app_name}-${var.environment}-label"
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = {
    "NORDCLOUD"                    = "NETJAM-001" 
    "kubernetes-dns-label-service" = "ingress-nginx/nginx-ingress-nginx-controller"
  }
}