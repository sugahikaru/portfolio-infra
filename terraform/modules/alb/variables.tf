variable "alb_name" {
  type        = string
  default     = "my-app-alb"
  description = "ALB name"
}

variable "target_group_name" {
  type        = string
  default     = "my-app-tg"
}

variable "target_group_port" {
  type        = number
  default     = 8080
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for ALB"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security groups for ALB"
}

variable "target_instance_id" {
  type        = string
  description = "EC2 instance ID to attach to the ALB target group"
}
