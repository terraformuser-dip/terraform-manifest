# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 4.4.0" 
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform-rg10"
    storage_account_name = "terraformbackend0001"
    container_name = "tfcontainer01"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
