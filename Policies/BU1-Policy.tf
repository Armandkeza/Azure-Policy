resource "azurerm_subscription_policy_assignment" "Postgre-publicacces" {
  name = "Postgre-publicacces"
  description = "Public network access should be disabled on PostgreSQL Database"
  subscription_id = var.BU1_scope
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/5e1de0e3-42cb-4ebc-a86d-61d0c619ca48"
  display_name = "Public network access should be disabled on Postgrel Database"
  }

resource "azurerm_subscription_policy_assignment" "Redundant-Backup" {
  name = "redundant-Backup"
  subscription_id = var.BU1_scope
  description = "Geo-redundant backup should be enabled for Azure Database for PostgreSQL"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/48af4db5-9b8b-401c-8e74-076be876a430"
  display_name = "Geo-Redundant backup on Azure PostgreSQL"
  }


resource "azurerm_subscription_policy_assignment" "Storage-serviceendpoint" {
  name = "Defender-Storage"
  subscription_id = var.BU1_scope
  description = "Storage Accounts should use a virtual network service endpoint"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/60d21c4f-21a3-4d94-85f4-b924e6aeeda4"
  display_name = "Storage Accounts should use a virtual network service endpoint"
  }


resource "azurerm_subscription_policy_assignment" "Application-Control" {
  name = "Application-Control"
  subscription_id = var.BU1_scope
  description = "Application control should be enabled on Azure VM"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/47a6b606-51aa-4496-8bb7-64b11cf66adc"
  display_name = "Application control should be enabled on Azure VM"
  }

  resource "azurerm_subscription_policy_assignment" "VM-Loganalytics" {
  name = "VM-Worskstation"
  subscription_id = var.BU1_scope
  description = "Log Analytics agent should be installed on your virtual machine for Azure Security Center monitoring"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a4fe33eb-e377-4efb-ab31-0784311bc499"
  display_name = "Log analytics for Azure VM"
  }