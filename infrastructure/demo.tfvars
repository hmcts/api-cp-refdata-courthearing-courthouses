api_mgmt_rg   = "rg-sps-platform-demo"
api_mgmt_name = "sps-api-mgmt-demo"

apim_product = {
  name                          = "cp-refdata-courthearing"
  subscription_required         = true
  subscriptions_limit           = 20
  approval_required             = false
  published                     = true
  product_access_control_groups = ["developers", "administrators", "guests"]
}

entra_tenant_id = "db827888-77df-4707-b3d9-24a3dfe32889"
entra_client_id = "946c647f-3703-4974-9657-6984f959c131"

apis = {
  courthouse = {
    openapi_spec_path = "../src/main/resources/openapi/openapi-spec.yml"
    display_name      = "Crime Ref Data Court Hearing Courthouse API (rcc)"
    path              = "amp/rcc"
    service_host      = "sitamp01-appgw.sit.nl.cjscp"
    service_path      = "/rcc"
    revision          = "1"
  }
}
