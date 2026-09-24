output "public_ip" {
  description = "Public IP address of the Mini Finance VM"
  value       = azurerm_public_ip.main.ip_address
}
