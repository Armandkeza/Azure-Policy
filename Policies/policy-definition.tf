resource "azurerm_policy_definition" "resource-location" {
  name                  = "resource-location"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Resource Location"
  policy_rule           = file("${path.module}/policy/ressource-location.json")
}
