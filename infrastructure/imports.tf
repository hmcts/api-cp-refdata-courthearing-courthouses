locals {
  apim_base = "/subscriptions/bd2864ed-4f3e-45ed-9c6a-8d179674bab1/resourceGroups/rg-sps-platform-sbox/providers/Microsoft.ApiManagement/service/sps-api-mgmt-sbox"
  apim_api  = "common-platform-api-refdata-court-hearing-court-houses"
}

import {
  to = module.product.azurerm_api_management_product.product
  id = "${local.apim_base}/products/cp-refdata-courthearing"
}

import {
  to = module.product.azurerm_api_management_product_group.access_control_groups["administrators"]
  id = "${local.apim_base}/products/cp-refdata-courthearing/groups/administrators"
}

import {
  to = module.product.azurerm_api_management_product_group.access_control_groups["developers"]
  id = "${local.apim_base}/products/cp-refdata-courthearing/groups/developers"
}

import {
  to = module.product.azurerm_api_management_product_group.access_control_groups["guests"]
  id = "${local.apim_base}/products/cp-refdata-courthearing/groups/guests"
}

import {
  to = module.apis["courthouses"].azurerm_api_management_api.api
  id = "${local.apim_base}/apis/${local.apim_api};rev=1"
}

import {
  to = module.apis["courthouses"].azurerm_api_management_product_api.link_to_product[0]
  id = "${local.apim_base}/products/cp-refdata-courthearing/apis/${local.apim_api}"
}

import {
  to = azurerm_api_management_api_policy.api_policy["courthouses"]
  id = "${local.apim_base}/apis/${local.apim_api}/policies/policy"
}
