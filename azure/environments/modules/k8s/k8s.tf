resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "${var.company}-${var.app_name}-${var.environment}-aks"
  location            = var.resource_group_location
  dns_prefix          = var.aks_dns_prefix
  kubernetes_version  = var.kubernetes_version
  resource_group_name = var.resource_group_name

  addon_profile {
    http_application_routing {
      enabled = false
    }

    oms_agent {
      enabled                    = true
      log_analytics_workspace_id = var.log_analytics_id
    }
  }

  role_based_access_control {
    enabled = true
  }

  default_node_pool {
    name                 = "workers"
    vm_size              = var.aks_agent_vm_size
    os_disk_size_gb      = var.aks_agent_os_disk_size
    enable_auto_scaling  = true
    min_count            = var.aks_agent_min
    max_count            = var.aks_agent_max
    max_pods             = var.aks_max_pods
    vnet_subnet_id       = var.aks_subnet_id
    node_count           = var.aks_agent_count
    availability_zones   = var.availability_zones
    orchestrator_version = var.kubernetes_version
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin     = "azure"
    network_policy     = "calico"
    dns_service_ip     = var.aks_dns_service_ip
    docker_bridge_cidr = var.aks_docker_bridge_cidr
    service_cidr       = var.aks_service_cidr
  }
  tags = var.tags
}
