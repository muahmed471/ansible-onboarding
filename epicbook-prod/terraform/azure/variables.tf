variable "location" {
  description = "Azure region"
  type        = string
  default     = "South India"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-epicbook-ansible"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-epicbook"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "frontend_subnet_cidr" {
  description = "Frontend subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "backend_subnet_cidr" {
  description = "Backend subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "Path to the SSH public key from WSL"
  type        = string
  default     = "/home/ubuntu/.ssh/id_ed25519.pub"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "mysql_admin_username" {
  description = "MySQL administrator username"
  type        = string
  default     = "mysqladmin"
}

variable "mysql_admin_password" {
  description = "MySQL administrator password"
  type        = string
  sensitive   = true
}

variable "mysql_database_name" {
  description = "Application database"
  type        = string
  default     = "book_review_db"
}

variable "mysql_version" {
  description = "MySQL version"
  type        = string
  default     = "8.0.21"
}
