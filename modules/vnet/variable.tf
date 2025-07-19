variable "name" {
  description = "Name of the virtual network"
  type        = string
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets with address prefixes and optional service endpoints"
  type = map(object({
    address_prefixes  = list(string)
    service_endpoints = optional(list(string), [])
  }))
}

variable "tags" {
  description = "Tags to apply to the VNet"
  type        = map(string)
  default     = {}
}
