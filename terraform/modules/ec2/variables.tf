variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where the EC2 instance will be deployed"
}

variable "key_name" {
  type        = string
  description = "Key pair name to access the EC2 instance"
}


variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to associate with the EC2 instance"
}

variable "iam_instance_profile" {
  description = "EC2 にアタッチする IAM instance profile"
  type        = string
}