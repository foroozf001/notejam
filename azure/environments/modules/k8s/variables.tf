## Application - Variables ##

# company name 
variable "company" {
  type        = string
  description = "The company name used to build resources"
  default     = ""
}

# application name 
variable "app_name" {
  type        = string
  description = "The application name used to build resources"
  default     = ""
}

# application or company environment
variable "environment" {
  type        = string
  description = "The environment to be built"
  default     = ""
}

# azure region
variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = ""
}

variable "log_workspace_id" {
  type        = string
  description = "Workspace id"
  default     = ""
}

variable "aks_dns_prefix" {
  description = "Optional DNS prefix to use with hosted Kubernetes API server FQDN."
  default     = ""
}

variable "aks_subnet_address_prefix" {
  description = "AKS subnet address."
  default     = ""
}

variable "services_subnet_address_prefix" {
  description = "Subnet for services"
  default     = ""
}

variable "aks_agent_os_disk_size" {
  description = "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
  default     = 0
}

variable "aks_agent_min" {
  description = "min"
  default     = 0
}

variable "aks_agent_max" {
  description = "max"
  default     = 0
}

variable "aks_max_pods" {
  description = "max"
  default     = 0
}

variable "availability_zones" {
  description = "max"
  default     = ""
}


variable "aks_agent_count" {
  description = "The number of agent nodes for the cluster."
  default     = 0
}

variable "aks_agent_vm_size" {
  description = "The size of the Virtual Machine."
  default     = ""
}

variable "kubernetes_version" {
  description = "The version of Kubernetes."
  default     = ""
}

variable "aks_service_cidr" {
  description = "A CIDR notation IP range from which to assign service cluster IPs."
  default     = ""
}

variable "aks_dns_service_ip" {
  description = "Containers DNS server IP address."
  default     = ""
}

variable "aks_docker_bridge_cidr" {
  description = "A CIDR notation IP for Docker bridge."
  default     = ""
}

variable "aks_enable_rbac" {
  description = "Enable RBAC on the AKS cluster. Defaults to false."
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
  default     = ""
}

variable "resource_group_location" {
  type        = string
  description = "Resource group name"
  default     = ""
}

variable "resource_group_id" {
  type        = string
  description = "Resource group id"
  default     = ""
}

variable "virtual_network_id" {
  type        = string
  description = "Virtual network ID"
  default     = ""
}

variable "aks_subnet_id" {
  type        = string
  description = "AKS subnet ID"
  default     = ""
}

variable "log_analytics_id" {
  type        = string
  description = "Log analytics ID"
  default     = ""
}

variable "systemnpname" {
  default = ""
}

variable "tags" {
  type = map(string)

  default = {
  }
}