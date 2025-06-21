variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "Name tag for the VPC"
  default     = "MyVPC"
}

variable "public_1a_cidr" {
  type        = string
  description = "CIDR block for public subnet in ap-northeast-1a"
  default     = "10.0.1.0/24"
}

variable "public_1c_cidr" {
  type        = string
  description = "CIDR block for public subnet in ap-northeast-1c"
  default     = "10.0.2.0/24"
}

variable "private_1a_cidr" {
  type        = string
  description = "CIDR block for private subnet in ap-northeast-1a"
  default     = "10.0.11.0/24"
}

variable "private_1c_cidr" {
  type        = string
  description = "CIDR block for private subnet in ap-northeast-1c"
  default     = "10.0.12.0/24"
}

variable "az_1a" {
  type        = string
  description = "Availability Zone 1a"
  default     = "ap-northeast-1a"
}

variable "az_1c" {
  type        = string
  description = "Availability Zone 1c"
  default     = "ap-northeast-1c"
}
