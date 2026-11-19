api_mgmt_rg   = "rg-sps-platform-sbox"
api_mgmt_name = "sps-api-mgmt-sbox"

apim_product = {
  name                          = "cp-refdata-courthearing"
  subscription_required         = true
  subscriptions_limit           = 20
  approval_required             = false
  published                     = true
  product_access_control_groups = ["developers", "administrators", "guests"]
}

entra_tenant_id = "d44f885c-4fac-47bf-afde-d7d861ec4d7b"
entra_client_id = "eab839a8-e3da-44c7-bef6-ba87c95b67e5"

apis = {
  courthouse = {
    openapi_spec_path = "../src/main/resources/openapi/openapi-spec.yml"
    display_name      = "Crime Ref Data Court Hearing Courthouse API (rcc)"
    path              = "amp/rcc"
    service_host      = "devamp01-appgw.dev.nl.cjscp"
    service_path      = "/rcc"
    revision          = "1"
  }
}
