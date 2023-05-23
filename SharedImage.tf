
data "azurerm_shared_image_version" "myimgversion" {
  name                = var.imageversion_name
  image_name          = var.image
  gallery_name        = var.gallery
  resource_group_name = var.image_rg
}
