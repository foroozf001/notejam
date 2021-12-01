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
  default     = "shared"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "west europe"
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