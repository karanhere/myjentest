
data "azurerm_virtual_network" "ad_vnet_data" {
  name                = var.ad_vnet
  resource_group_name = var.ad_rg
}

resource "azurerm_virtual_network_peering" "peer1" {
  name                      = "peer_avdspoke-${var.prefix}_ad"
  resource_group_name       = var.rg_name
  virtual_network_name      = azurerm_virtual_network.vnet.name
  remote_virtual_network_id = data.azurerm_virtual_network.ad_vnet_data.id
}
resource "azurerm_virtual_network_peering" "peer2" {
  name                      = "peer_ad_avdspoke-${var.prefix}"
  resource_group_name       = var.ad_rg
  virtual_network_name      = var.ad_vnet
  remote_virtual_network_id = azurerm_virtual_network.vnet.id
}
