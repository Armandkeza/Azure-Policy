  resource "azurerm_management_group" "Global_management_group" {
  display_name = "Some Management Group"
}



resource "azurerm_management_group_policy_assignment" "Defender-for-cloud" {
  name                 = "Defender-for-cloud"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/4da35fc9-c9e7-4960-aec9-797fe7d9051d"
  management_group_id  = var.management_group_global
}

resource "azurerm_management_group_policy_assignment" "Accounts_owners" {
  name                 = "Accounts_owners"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/4f11b553-d42e-4e3a-89be-32ca364cad4c"
  management_group_id  = var.management_group_global
}

resource "azurerm_management_group_policy_assignment" "Accounts_MFA" {
  name                 = "Accounts_MFA"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e3e008c3-56b9-4133-8fd7-d3347377402a"
  management_group_id  = var.management_group_global
}

resource "azurerm_management_group_policy_assignment" "Subnet-NSG" {
  name                 = "Subnet-NSG"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e71308d3-144b-4262-b144-efdc3cc90517"
  description          = "Assignment of restrict resource location policy"
  management_group_id  = var.management_group_global
}

resource "azurerm_management_group_policy_assignment" "resource_location" {
  name                 = "resource_location"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  description          = "Assignment of restrict resource location policy"
  management_group_id  = var.management_group_global
    parameters = jsonencode({
    listOfAllowedLocations = {
      value = ["eastus", "westus"]
    }
  })

  }

  resource "azurerm_management_group_policy_assignment" "ressource-tag" {
  name                 = "ressource-tag"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/96670d01-0a4d-4649-9c89-2d3abc0a5025"
  description          = "Assignment tag to ressources"
  management_group_id  = var.management_group_global
    parameters = jsonencode({
    tagName   = {
      value = "Environement"
    }
  })
 
 }