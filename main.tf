terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/rg"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = var.tags
}
