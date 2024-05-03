
resource "azurerm_management_group_policy_assignment" "Storage-network" {
  name        = "Storage-network"
  description = "Storage account should restrict network access"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/34c877ad-507e-4c82-993e-3452a6e0ad3c"
  management_group_id  = var.management_group_application
}

resource "azurerm_management_group_policy_assignment" "linux-sskkeys" {
  name        = "linux-sshkeys"
  description = "Linux VM should require sshkeys authentication"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/630c64f9-8b6b-4c64-b511-6544ceff6fd6"
  management_group_id  = var.management_group_application
}

resource "azurerm_management_group_policy_assignment" "keyvault-privatelink" {
  name        = "keyvault-privatelink"
  description = "Linux VM should require sshkeys authentication"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a6abeaec-4d90-4a02-805f-6b26c4d3fbe9"
  management_group_id  = var.management_group_application
}

resource "azurerm_management_group_policy_assignment" "Mysql-Encryption" {
  name        = "Mysql-Encryption"
  description = "Mysql database should be encrypted with customer-managed keys"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/83cef61d-dbd1-4b20-a4fc-5fbc7da10833"
  management_group_id  = var.management_group_application
}

resource "azurerm_management_group_policy_assignment" "Appservice-vnet" {
  name        = "Appservice-vnet"
  description = "Appservice should be injected to VNET"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/72d04c29-f87d-4575-9731-419ff16a2757"
  management_group_id  = var.management_group_application
}