
resource "azurerm_virtual_desktop_application_group" "dag" {
  name                = "${var.prefix}-dag"
  location            = azurerm_resource_group.sh.location
  resource_group_name = azurerm_resource_group.sh.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.terrahostpool.id
  friendly_name = "${var.prefix}-AppGroup"
  description   = "An application group from terraform"
  tags = var.resource_tags

  depends_on          = [azurerm_virtual_desktop_host_pool.terrahostpool, azurerm_virtual_desktop_workspace.workspace]
}
