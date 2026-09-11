# ============================================================
# Module 7 - Application Landing Zones
# Scaled-down single-subscription lab
# ============================================================

# ============================================================
# PCI Application Landing Zone
# ============================================================

resource "azurerm_resource_group" "app_pci" {
  provider = azurerm.management

  name     = "rg-app-pci"
  location = "centralindia"

  tags = {
    environment    = "lab"
    landing_zone   = "pci"
    classification = "pci"
    managed_by     = "terraform"
  }
}

resource "azurerm_virtual_network" "app_pci" {
  provider = azurerm.management

  name                = "vnet-app-pci"
  location            = azurerm_resource_group.app_pci.location
  resource_group_name = azurerm_resource_group.app_pci.name
  address_space       = ["10.20.0.0/16"]

  tags = {
    environment    = "lab"
    landing_zone   = "pci"
    classification = "pci"
    managed_by     = "terraform"
  }
}

resource "azurerm_subnet" "app_pci_workload" {
  provider = azurerm.management

  name                 = "snet-workload"
  resource_group_name  = azurerm_resource_group.app_pci.name
  virtual_network_name = azurerm_virtual_network.app_pci.name
  address_prefixes     = ["10.20.1.0/24"]
}

resource "azurerm_network_security_group" "app_pci" {
  provider = azurerm.management

  name                = "nsg-app-pci-workload"
  location            = azurerm_resource_group.app_pci.location
  resource_group_name = azurerm_resource_group.app_pci.name

  security_rule {
    name                       = "Deny-Internet-Inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  tags = {
    environment    = "lab"
    landing_zone   = "pci"
    classification = "pci"
    managed_by     = "terraform"
  }
}

resource "azurerm_subnet_network_security_group_association" "app_pci" {
  provider = azurerm.management

  subnet_id                 = azurerm_subnet.app_pci_workload.id
  network_security_group_id = azurerm_network_security_group.app_pci.id
}

# ============================================================
# Standard Application Landing Zone
# ============================================================

resource "azurerm_resource_group" "app_standard" {
  provider = azurerm.management

  name     = "rg-app-standard"
  location = "centralindia"

  tags = {
    environment    = "lab"
    landing_zone   = "standard"
    classification = "standard"
    managed_by     = "terraform"
  }
}

resource "azurerm_virtual_network" "app_standard" {
  provider = azurerm.management

  name                = "vnet-app-standard"
  location            = azurerm_resource_group.app_standard.location
  resource_group_name = azurerm_resource_group.app_standard.name
  address_space       = ["10.30.0.0/16"]

  tags = {
    environment    = "lab"
    landing_zone   = "standard"
    classification = "standard"
    managed_by     = "terraform"
  }
}

resource "azurerm_subnet" "app_standard_workload" {
  provider = azurerm.management

  name                 = "snet-workload"
  resource_group_name  = azurerm_resource_group.app_standard.name
  virtual_network_name = azurerm_virtual_network.app_standard.name
  address_prefixes     = ["10.30.1.0/24"]
}

resource "azurerm_network_security_group" "app_standard" {
  provider = azurerm.management

  name                = "nsg-app-standard-workload"
  location            = azurerm_resource_group.app_standard.location
  resource_group_name = azurerm_resource_group.app_standard.name

  tags = {
    environment    = "lab"
    landing_zone   = "standard"
    classification = "standard"
    managed_by     = "terraform"
  }
}

resource "azurerm_subnet_network_security_group_association" "app_standard" {
  provider = azurerm.management

  subnet_id                 = azurerm_subnet.app_standard_workload.id
  network_security_group_id = azurerm_network_security_group.app_standard.id
}