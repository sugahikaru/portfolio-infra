variable "subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for RDS"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security groups for RDS"
}

variable "db_username" {
  description = "RDS master username"
  type        = string
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}
