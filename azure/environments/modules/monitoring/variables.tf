## Application - Variables ##

variable "company" {
  type        = string
  description = "The company name used to build resources"
  default     = ""
}

variable "app_name" {
  type        = string
  description = "The application name used to build resources"
  default     = ""
}

variable "environment" {
  type        = string
  description = "The environment to be built"
  default     = ""
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
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

variable "tags" {
  type = map(string)

  default = {
  }
}