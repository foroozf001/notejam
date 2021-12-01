resource "azurerm_subnet_network_security_group_association" "network_security_group_association_1" {
  subnet_id                 = azurerm_subnet.subnet_2.id
  network_security_group_id = azurerm_network_security_group.network_security_group_1.id
}

resource "azurerm_subnet_network_security_group_association" "network_security_group_association_2" {
  subnet_id                 = azurerm_subnet.subnet_1.id
  network_security_group_id = azurerm_network_security_group.network_security_group_1.id
}