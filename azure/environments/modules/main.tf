module "networking" {
  source                         = "./networking"
  app_name                       = var.app_name
  company                        = var.company
  environment                    = var.environment
  location                       = azurerm_resource_group.resource_group_1.location
  resource_group_location        = azurerm_resource_group.resource_group_1.location
  resource_group_name            = azurerm_resource_group.resource_group_1.name
  aks_subnet_address_prefix      = var.aks_subnet_address_prefix
  services_subnet_address_prefix = var.services_subnet_address_prefix
  tags                           = var.tags
}

module "monitoring" {
  source                  = "./monitoring"
  app_name                = var.app_name
  company                 = var.company
  environment             = var.environment
  location                = azurerm_resource_group.resource_group_1.location
  resource_group_location = azurerm_resource_group.resource_group_1.location
  resource_group_name     = azurerm_resource_group.resource_group_1.name
  tags                    = var.tags
}

module "k8s" {
  source                    = "./k8s"
  app_name                  = var.app_name
  company                   = var.company
  environment               = var.environment
  location                  = azurerm_resource_group.resource_group_1.location
  resource_group_location   = azurerm_resource_group.resource_group_1.location
  resource_group_name       = azurerm_resource_group.resource_group_1.name
  resource_group_id         = azurerm_resource_group.resource_group_1.id
  virtual_network_id        = module.networking.virtual_network_id
  aks_subnet_id             = module.networking.subnet_id
  aks_dns_prefix            = var.aks_dns_prefix
  aks_dns_service_ip        = var.aks_dns_service_ip
  aks_docker_bridge_cidr    = var.aks_docker_bridge_cidr
  aks_service_cidr          = var.aks_service_cidr
  aks_agent_min             = var.aks_agent_min
  aks_agent_max             = var.aks_agent_max
  aks_agent_vm_size         = var.aks_agent_vm_size
  aks_agent_count           = var.aks_agent_count
  aks_agent_os_disk_size    = var.aks_agent_os_disk_size
  aks_subnet_address_prefix = var.aks_subnet_address_prefix
  kubernetes_version        = var.kubernetes_version
  log_analytics_id          = module.monitoring.log_analytics_id_1
  tags                      = var.tags
  aks_max_pods              = var.aks_max_pods
  availability_zones        = var.availability_zones
}