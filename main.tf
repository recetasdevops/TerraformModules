module "webserver_cluster" {
  source = "./webappmodule"
  appserviceplanname  = "rdserviceplan"
  resource_group_name = "rdresourcegroup"
  webappname      = "recetasdevopsalexito"
  api_url      = "https://www.google.com"
  versionwebapp = "7.0"
}


