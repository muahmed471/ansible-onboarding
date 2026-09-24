output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "frontend_public_ip" {
  value = azurerm_public_ip.frontend.ip_address
}

output "frontend_private_ip" {
  value = azurerm_network_interface.frontend.private_ip_address
}

output "backend_public_ip" {
  value = azurerm_public_ip.backend.ip_address
}

output "backend_private_ip" {
  value = azurerm_network_interface.backend.private_ip_address
}

output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.main.fqdn
}

output "mysql_database_name" {
  value = azurerm_mysql_flexible_database.book_review.name
}

output "mysql_username" {
  value = var.mysql_admin_username
}
