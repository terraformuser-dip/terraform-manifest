# terraform-manifest

terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.4.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "c1c4b50e-114b-4407-92aa-8b75e6e382e8"
    tenant_id = "5877e1a4-a688-44b3-8862-aee118d0e40e"
    client_id = "843fb4a3-bc77-40ce-bc39-a058961c6c06"
    client_secret = "Vji8Q~eLYObtcRa8vmFAPS3hBeK~wAuGD6wlOb-E"
  }

resource "azurerm_resource_group" "appgrp"{
  name = "app-grp"
  location = "West Europe"
}

resource "azurerm_storage_account" "tf34st14567" {
  name = "tf34st14567"
  resource_group_name = "app-grp"
  location = "West Europe"
  account_kind = "StorageV2"
  account_tier = "Standard"
  account_replication_type = "LRS"
}
