api_mgmt_rg   = "rg-sps-platform-prod"
api_mgmt_name = "sps-api-mgmt-prod"

apim_product = {
  name                          = "cp-refdata-courthearing"
  subscription_required         = true
  subscriptions_limit           = 20
  approval_required             = false
  published                     = true
  product_access_control_groups = ["developers", "administrators", "guests"]
}

entra_tenant_id = "0d0315f6-3c04-4edb-ac37-b05f580cc122"
entra_client_id = "b9981a51-e37c-4799-a642-d77af97a7fd6"

apis = {
  courthouse = {
    openapi_spec_path = "../src/main/resources/openapi/openapi-spec.yml"
    display_name      = "Crime Ref Data Court Hearing Courthouse API (rcc)"
    path              = "amp/rcc"
    service_host      = "prdamp01-appgw.prd.lv.cjscp"
    service_path      = "/rcc"
    revision          = "1"
  }
}
