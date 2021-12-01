variable "company" {
  type        = string
  description = "The company name used to build resources"
  default     = "nordcloud"
}

variable "app_name" {
  type        = string
  description = "The application name used to build resources"
  default     = "notejam"
}

variable "environment" {
  type        = string
  description = "The environment to be built"
  default     = "prod"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "west europe"
}

variable "aks_dns_prefix" {
  type        = string
  description = "AKS required dns prefix"
  default     = "aks"
}

variable "aks_subnet_address_prefix" {
  description = "AKS subnet address."
  default     = "10.240.0.0/16"
}

variable "services_subnet_address_prefix" {
  description = "Subnet for services"
  default     = "10.241.0.0/26"
}

variable "aks_agent_max" {
  default = 2
}

variable "aks_agent_min" {
  default = 1
}

variable "aks_max_pods" {
  default = 80
}

variable "availability_zones" {
  default = ["1", "2", "3"]
}

variable "node_pool_name" {
  type        = string
  description = "AKS required node pool name"
  default     = "pool"
}

variable "aks_agent_count" {
  description = "The number of agent nodes for the cluster."
  default     = 2
}

variable "aks_agent_os_disk_size" {
  description = "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
  default     = 128
}

variable "aks_agent_vm_size" {
  type        = string
  description = "VM size for AKS nodes"
  default     = "Standard_A2_v2"
}

variable "kubernetes_version" {
  type        = string
  description = "Version of AKS cluster"
  default     = "1.21.1"
}

variable "aks_service_cidr" {
  description = "A CIDR notation IP range from which to assign service cluster IPs."
  default     = "10.0.0.0/24"
}

variable "aks_dns_service_ip" {
  description = "Containers DNS server IP address."
  default     = "10.0.0.10"
}

variable "aks_docker_bridge_cidr" {
  description = "A CIDR notation IP for Docker bridge."
  default     = "172.17.0.1/16"
}

variable "tags" {
  type = map(string)

  default = {
    NORDCLOUD = "NETJAM-001"
  }
}

variable "tag_name" {
  default = "NORDCLOUD"
}

variable "tag_value" {
  default = "NETJAM-001"
}