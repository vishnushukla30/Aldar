variable "subscription_id" {
  type = string
  default = "XXXX"
}
variable "storage_resource_group" {
  type = string
  default = "rg-XXX"
}
variable "storage_account" {
  type = string
  default = "samplestorage"
}
variable "state_container" {
  type = string
  default = "tfstate"
}
variable "state_file" {
  type = string
  default = "service1"
}
variable "resource_group_name" {
  type = string
  default = "appservice-rg"
} 
variable "vnet_name" {
  type = string
  default = "vnet-service1"
}
variable "subnet_name" {
  type = string
  default = "snet-d-1"
}
variable "location" {
  type = string
  default = "uaenorth"
}
variable "app_service_name" {
  type = string
  default = "service1"
}
variable "slot_count" {
  type = number
  default = 1
  description = "app service slots to create"
}
variable "slot_name" {
  type = string
  default = "slot-dev-01"
}
variable "service_plan_name" {
  type = string
  default = "plan-x"
}
variable "sku_name" {
  type = string
  default = "P1v2"
}
variable "os_type" {
  type = string
  default = "Linux"
}
variable "vnet_address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}
variable "subnet_address_prefix" {
  type = list(string)
  default = ["10.0.1.0/24"]
}
