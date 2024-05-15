# Aldar
Assessment Task: Develop a Terraform module to deploy an Azure App Service within a Virtual Network, ensuring the setup includes staging slots and adheres to best practices in code reusability and documentation

This Terraform project deploys an Azure App Service with multiple deployment slots, in a specific region and resource group. It configures the service with a defined SKU and OS type, integrating it with a VNet. Designed for reusability, these templates facilitate deployment across various projects.


Configuration Setup: Ensure Terraform and Azure CLI are installed, and Azure CLI is configured. Gather Azure subscription ID, storage account name, resource group name, and container name.

Azure_Resources: Resource Group, VNet with Subnets, App Service Plan, App Service, Deployment Slots.

Assessment explanations: 

The "modules" directory holds modules for app service and its dependencies:

AppService: Creates the app service
AppServicePlan: Creates the app service plan
ResourceGroup: Creates the resource group
Subnet: Creates the subnet
VNet: Creates the virtual network
Naming conventions use prefixes:

AppService: appservice-<app_service_name>
AppServicePlan: plan-<service_plan_name>
ResourceGroup: rg-<resource_group_name>
Subnet: snet-<subnet_name>
VNet: vnet-<vnet_name>
Modules are orchestrated in main.tf of AppService module. On running terraform apply, ResourceGroup module executes first, followed by AppService module, and then others in sequence.
