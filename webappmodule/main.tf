locals {
  location = "West Europe"
  service_plan_tier = "Standard"
  service_plan_size = "S1"
}

#Definimos el service plan a crear
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.appserviceplanname
  location            = local.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

#Definimos el app service a crear
resource "azurerm_app_service" "app_service_webapp" {
  name                = var.webappname
  location            = local.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  app_settings = {
    "ApiUrl" = var.api_url,
    "Version" = var.versionwebapp
  }
}
