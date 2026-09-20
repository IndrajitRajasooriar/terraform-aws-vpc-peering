output "vpc_1_id" {
  description = "ID of VPC 1"
  value       = module.vpc_1.vpc_id
}

output "vpc_2_id" {
  description = "ID of VPC 2"
  value       = module.vpc_2.vpc_id
}

output "subnet_1_id" {
  description = "ID of Subnet 1"
  value       = module.subnet_1.subnet_id
}

output "subnet_2_id" {
  description = "ID of Subnet 2"
  value       = module.subnet_2.subnet_id
}

output "vpc_peering_connection_id" {
  description = "ID of the VPC Peering Connection"
  value       = module.vpc_peering_connection.id
}

output "ec2_1_id" {
  description = "ID of EC2 instance 1"
  value       = module.ec2_1.ec2_instance_id
}

output "ec2_1_private_ip" {
  description = "Private IP of EC2 instance 1"
  value       = module.ec2_1.private_ip
}

output "ec2_2_id" {
  description = "ID of EC2 instance 2"
  value       = module.ec2_2.ec2_instance_id
}

output "ec2_2_private_ip" {
  description = "Private IP of EC2 instance 2"
  value       = module.ec2_2.private_ip
}
