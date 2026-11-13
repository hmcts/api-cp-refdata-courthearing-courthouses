# Sbox resources are already in state. APIM automatically adds the administrators
# group to new products; add the demo/prod entries here only after the first apply
# creates the product (see slc's imports.tf).
locals {
  administrators_product_group_ids = {
    "sps-api-mgmt-demo" = "/subscriptions/058bf954-ac1f-462b-bca4-42a30314bd74/resourceGroups/rg-sps-platform-demo/providers/Microsoft.ApiManagement/service/sps-api-mgmt-demo/products/cp-refdata-courthearing/groups/administrators"
  }
}

import {
  for_each = contains(keys(local.administrators_product_group_ids), var.api_mgmt_name) ? toset(["administrators"]) : toset([])
  to       = module.product.azurerm_api_management_product_group.access_control_groups[each.value]
  id       = local.administrators_product_group_ids[var.api_mgmt_name]
}
