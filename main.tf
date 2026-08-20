resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source                      = "./modules/network"
  location                    = azurerm_resource_group.main.location
  resource_group_name         = azurerm_resource_group.main.name
  vnet_name                   = var.virtual_network_name
  vnet_address_prefix         = var.vnet_address_prefix
  subnet_name                 = var.subnet_name
  subnet_address_prefix       = var.subnet_address_prefix
  network_security_group_name = var.network_security_group_name
  public_ip_address_name      = var.public_ip_address_name
  dns_label                   = var.dns_label

  depends_on = [azurerm_resource_group.main]
}

module "storage" {
  source                 = "./modules/storage"
  location               = azurerm_resource_group.main.location
  resource_group_name    = azurerm_resource_group.main.name
  storage_account_name   = var.storage_account_name_app
  storage_container_name = var.storage_container_name

  depends_on = [azurerm_resource_group.main]
}

module "compute" {
  source              = "./modules/compute"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  ssh_key_public      = var.ssh_key_public

  subnet_id    = module.network.subnet_id
  public_ip_id = module.network.public_ip_id
  my_ip = var.my_ip
  admin_username = var.admin_username

  depends_on = [azurerm_resource_group.main]
}