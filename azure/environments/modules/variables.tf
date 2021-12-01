variable "company" {
  type        = string
  description = "The company name used to build resources"
}

variable "app_name" {
  type        = string
  description = "The application name used to build resources"
}

variable "environment" {
  type        = string
  description = "The environment to be built"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
}

variable "aks_dns_prefix" {
  type        = string
  description = "AKS required dns prefix"
}

variable "aks_subnet_address_prefix" {
  description = "AKS subnet address."
}

variable "services_subnet_address_prefix" {
  description = "Subnet for services"
}

variable "aks_agent_max" {
}

variable "aks_agent_min" {
}

variable "aks_max_pods" {
}

variable "availability_zones" {
}

variable "node_pool_name" {
  type        = string
  description = "AKS required node pool name"
}

variable "aks_agent_count" {
  description = "The number of agent nodes for the cluster."
}

variable "aks_agent_os_disk_size" {
  description = "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
}

variable "aks_agent_vm_size" {
  type        = string
  description = "VM size for AKS nodes"
}

variable "kubernetes_version" {
  type        = string
  description = "Version of AKS cluster"
}

variable "aks_service_cidr" {
  description = "A CIDR notation IP range from which to assign service cluster IPs."
}

variable "aks_dns_service_ip" {
  description = "Containers DNS server IP address."
}

variable "aks_docker_bridge_cidr" {
  description = "A CIDR notation IP for Docker bridge."
}

variable "tags" {
  type = map(string)
}

variable "tag_name" {
}

variable "tag_value" {
}