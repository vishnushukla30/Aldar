# Aldar
Assessment Task: Develop a Terraform module to deploy an Azure App Service within a Virtual Network, ensuring the setup includes staging slots and adheres to best practices in code reusability and documentation

This Terraform project deploys an Azure App Service with multiple deployment slots, in a specific region and resource group. It configures the service with a defined SKU and OS type, integrating it with a VNet. Designed for reusability, these templates facilitate deployment across various projects.


Configuration Setup: Ensure Terraform and Azure CLI are installed, and Azure CLI is configured. Gather Azure subscription ID, storage account name, resource group name, and container name.

Variables_name:
subscription_id - ID of the subscription
location - Resource location
resource_group_name - Name of the resource group
app_service_name - Name of the app service
service_plan_name - Plan for the app service
sku_name - SKU name
os_type - Operating system type
slot_name - Deployment slot name
slot_count - Number of deployment slots
vnet_name - Name of the VNet
vnet_address_space - Address space of VNet
subnet_name - Name of the subnet
subnet_address_prefix - Address prefix of the subnet

Azure_Resources: Resource Group, VNet with Subnets, App Service Plan, App Service, Deployment Slots.

Assessment explanations: 

The Module directory holds modules for app service and its dependencies:

<img width="276" alt="image" src="https://github.com/vishnushukla30/Aldar/assets/25581203/d2e299e7-8368-4676-ae8e-cf2b91aab4b3">


AppSvc: Creates the app service
AppSvcPlan: Creates the app service plan
ResourcesGrp: Creates the resource group
Subnets: Creates the subnet
VNet: Creates the virtual network

AppSvc: appservice-<app_service_name>
AppSvcPlan: plan-<service_plan_name>
ResourcesGrp: rg-<resource_group_name>
Subnets: snet-<subnet_name>
VNet: vnet-<vnet_name>
Modules are orchestrated in main.tf of AppService module. 
On running terraform apply, the ResourceGroup module executes first, followed by the AppService module, and then others in continuous sequence.


