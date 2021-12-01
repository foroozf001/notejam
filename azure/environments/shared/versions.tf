terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.86.0"
    }
  }
  required_version = "1.0.11"
  backend "azurerm" {
    resource_group_name  = "state"
    storage_account_name = "tf0bxy1xun"
    container_name       = "core-tfstate"
    key                  = "netjam/environments/shared/terraform.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}
  skip_provider_registration = true
}
