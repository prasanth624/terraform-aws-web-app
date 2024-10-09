output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value       = aws_subnet.main.id
}

output "internet_gateway_id" {
  description = "The ID of the created Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "route_table_id" {
  description = "The ID of the created Route Table"
  value       = aws_route_table.main.id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_instance_id" {
  description = "The ID of the created EC2 Instance"
  value       = aws_instance.web.id
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the EC2 Instance"
  value       = aws_instance.web.public_ip
}
