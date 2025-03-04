terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "TEST_DEV"
    storage_account_name = "terraformcodeacademy"
    container_name       = "tfstate44"
    key                  = "terraform.tfstate44"
    subscription_id      = "e25e96db-c54e-4251-bed2-5d7a3e52fc4e"
    tenant_id            = "8b87af7d-8647-4dc7-8df4-5f69a2011bb5"
  }
}
provider "azurerm" {
  features {}
}
