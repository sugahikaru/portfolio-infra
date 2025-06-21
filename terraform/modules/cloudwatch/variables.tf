variable "alarm_name" {
  type        = string
  default     = "high_cpu_alarm"
  description = "Name of the CloudWatch alarm"
}

variable "comparison_operator" {
  type        = string
  default     = "GreaterThanThreshold"
}

variable "evaluation_periods" {
  type        = number
  default     = 3
}

variable "metric_name" {
  type        = string
  default     = "CPUUtilization"
}

variable "namespace" {
  type        = string
  default     = "AWS/EC2"
}

variable "period" {
  type        = number
  default     = 300
}

variable "statistic" {
  type        = string
  default     = "Average"
}

variable "threshold" {
  type        = number
  default     = 3
}

variable "alarm_description" {
  type        = string
  default     = "EC2 CPU usage too high"
}

variable "instance_id" {
  type        = string
  description = "ID of the EC2 instance to monitor"
}
