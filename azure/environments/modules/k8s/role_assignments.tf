# AcrPull on managed identity
# For role definition ids: https://docs.microsoft.com/nl-nl/azure/role-based-access-control/built-in-roles
resource "azurerm_role_assignment" "role_assignment_2" {
  scope              = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/nordcloud-notejam-shared-rg/providers/Microsoft.ContainerRegistry/registries/mynotejamacr"
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/7f951dda-4ed3-4680-a7ca-43fe172d538d"
  principal_id       = azurerm_kubernetes_cluster.k8s.kubelet_identity.0.object_id
}

resource "azurerm_role_assignment" "role_assignment_3" {
  scope              = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${azurerm_kubernetes_cluster.k8s.node_resource_group}"
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
  principal_id       = azurerm_kubernetes_cluster.k8s.kubelet_identity.0.object_id
}

# Network contributor on the vnet
# For role definition ids: https://docs.microsoft.com/nl-nl/azure/role-based-access-control/built-in-roles
resource "azurerm_role_assignment" "role_assignment_4" {
  scope              = var.virtual_network_id
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/4d97b98b-1d4f-4787-a291-c67834d212e7"
  principal_id       = azurerm_kubernetes_cluster.k8s.identity.0.principal_id
}

# Network contributor on the subnet
# For role definition ids: https://docs.microsoft.com/nl-nl/azure/role-based-access-control/built-in-roles
resource "azurerm_role_assignment" "role_assignment_5" {
  scope              = var.aks_subnet_id
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/4d97b98b-1d4f-4787-a291-c67834d212e7"
  principal_id       = azurerm_kubernetes_cluster.k8s.identity.0.principal_id
}

# Network contributor on the resource group
# For role definition ids: https://docs.microsoft.com/nl-nl/azure/role-based-access-control/built-in-roles
resource "azurerm_role_assignment" "role_assignment_6" {
  scope              = var.resource_group_id
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/4d97b98b-1d4f-4787-a291-c67834d212e7"
  principal_id       = azurerm_kubernetes_cluster.k8s.identity.0.principal_id
}

# Managed identity operator
resource "azurerm_role_assignment" "role_assignment_7" {
  scope              = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${azurerm_kubernetes_cluster.k8s.node_resource_group}"
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/f1a07417-d97a-45cb-824c-7a7467783830"
  principal_id       = azurerm_kubernetes_cluster.k8s.kubelet_identity.0.object_id
}

# Virtual machine contributor
resource "azurerm_role_assignment" "role_assignment_8" {
  scope              = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${azurerm_kubernetes_cluster.k8s.node_resource_group}"
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/9980e02c-c2be-4d73-94e8-173b1dc7cf3c"
  principal_id       = azurerm_kubernetes_cluster.k8s.kubelet_identity.0.object_id
}

# Managed identity operator on main rg
resource "azurerm_role_assignment" "role_assignment_9" {
  scope              = var.resource_group_id
  role_definition_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/providers/Microsoft.Authorization/roleDefinitions/f1a07417-d97a-45cb-824c-7a7467783830"
  principal_id       = azurerm_kubernetes_cluster.k8s.kubelet_identity.0.object_id
}