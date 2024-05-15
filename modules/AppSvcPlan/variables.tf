variable "service_plan_name" {
  type = string
}

variable "os_type" {
  type = string
}

variable "sku_name" {
    type        = string 
    description = "AppService Plan SKU code"
    default     = "P1v2"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
