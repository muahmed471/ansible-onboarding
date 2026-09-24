variable "location" {
  description = "Azure region"
  type        = string
  default     = "South India"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "admin_public_key" {
  description = "SSH public key for the Azure VM"
  type        = string
  sensitive   = true
}

variable "ssh_source_ip" {
  description = "IP address allowed to SSH to the Azure VM"
  type        = string
  default     = "0.0.0.0/0"
}

variable "admin_username" {
  description = "Admin username for the Azure VM"
  type        = string
  default     = "azureuser"
}
