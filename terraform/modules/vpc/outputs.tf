output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the created VPC"
}

output "public_subnet_1a_id" {
  value       = aws_subnet.public_1a.id
  description = "ID of the public subnet in AZ 1a"
}

output "public_subnet_1c_id" {
  value       = aws_subnet.public_1c.id
  description = "ID of the public subnet in AZ 1c"
}

output "private_subnet_1a_id" {
  value       = aws_subnet.private_1a.id
  description = "ID of the private subnet in AZ 1a"
}

output "private_subnet_1c_id" {
  value       = aws_subnet.private_1c.id
  description = "ID of the private subnet in AZ 1c"
}

output "private_subnet_ids" {
  value       = [aws_subnet.private_1a.id, aws_subnet.private_1c.id]
  description = "List of private subnet IDs"
}

output "web_sg_id" {
  value       = aws_security_group.web.id
  description = "Security Group ID for web/EC2"
}

output "rds_sg_id" {
  value       = aws_security_group.rds_sg.id
  description = "Security Group ID for RDS"
}
