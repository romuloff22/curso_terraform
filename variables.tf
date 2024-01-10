variable "location" {
  description = "Regiao dos recursos criados"
  type        = string
  default     = "South Central US"

}

variable "account_tier" {
  description = "Tier da Storage Account"
  type        = string
  default     = "Standard"

}

variable "account_replication_type" {
  description = "Tipo de replicação dos dados"
  type        = string
  default     = "LRS"

}