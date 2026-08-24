# The apis map key was renamed from "courthouses" to "courthouse" to match the
# estate convention. The Azure resources are unchanged — only their Terraform
# addresses move, so these blocks stop Terraform destroying and recreating them.

moved {
  from = module.apis["courthouses"]
  to   = module.apis["courthouse"]
}

moved {
  from = azurerm_api_management_api_policy.api_policy["courthouses"]
  to   = azurerm_api_management_api_policy.api_policy["courthouse"]
}
