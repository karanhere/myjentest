
resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace
  location            = azurerm_resource_group.sh.location
  resource_group_name = azurerm_resource_group.sh.name

  friendly_name = var.workspace
  description   = "Deployed via terraform"
  tags = var.resource_tags
}

// AVD workspace app group association //
resource "azurerm_virtual_desktop_workspace_application_group_association" "ws-dag" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.dag.id
}

