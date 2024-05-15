variable "subnet_address_prefix" {
  type = list(string)
  default = ["10.0.1.0/24"]
}
variable "subnet_name" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}

