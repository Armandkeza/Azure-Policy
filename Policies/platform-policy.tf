resource "azurerm_management_group_policy_assignment" "DDOS-protection" {
  name        = "DDOS-Protection"
  description = "Azure DDoS Protection should be enabled"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a7aca53f-2ed4-4466-a25e-0b45ade68efd"
  management_group_id  = var.management_group_platform
}

resource "azurerm_management_group_policy_assignment" "ratelimit-frontdoor" {
  name        = "ratelimit-Frontdoor"
  description = "Enable Rate limit rule of azure waf for Frontdoor"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e52e8487-4a97-48ac-b3e6-1c3cef45d298"
  management_group_id  = var.management_group_platform
}

resource "azurerm_management_group_policy_assignment" "appgtw-waf" {
  name        = "appgtw-waf"
  description = "Application gateway should have WAF enabled"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e52e8487-4a97-48ac-b3e6-1c3cef45d298"
  management_group_id  = var.management_group_platform
}

resource "azurerm_management_group_policy_assignment" "AzureAD-Privatelink" {
  name        = "AzureAD-Privatelink"
  description = "Azure AD should use private link"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/2e9411a0-0c5a-44b3-9ddb-ff10a1a2bf28"
  management_group_id  = var.management_group_platform
}
