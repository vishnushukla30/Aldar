variable "resource_group_name" {
  type = string
  default = "rg-dev-01"
}

variable "location" {
  type = string
  default = "westeurope"
}
variable "tags" {
  type = map
  default = {
    "ownerName" = "Vishnu"
    "environment" = "Pre-Prod"
    "businessUnit" = "UAE"
    "costCenter" = "it"
    "applicationName" = "app-service"
  }
}

