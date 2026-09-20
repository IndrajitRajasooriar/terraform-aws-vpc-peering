//////// Zone 1 variables //////////
variable "vpc_name_1" {
  description = "The name of the VPC to create."
  type        = string
}

variable "vpc_cidr_1" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zone_1" {
  description = "The availability zone for the first subnet."
  type        = string
  default     = "eu-west-1a"
}

variable "subnet_cidr_1" {
  description = "The CIDR block for the first subnet."
  type        = string
}

variable "subnet_name_1" {
  description = "The name of the first subnet."
  type        = string
}

variable "security_group_name_1" {
  description = "The name of the security group for the first VPC."
  type        = string
}

variable "security_group_description_1" {
  description = "The description of the security group for the first VPC."
  type        = string
}

variable "sg_ingress_1" {
  description = "A list of ingress rules for the security group in the first VPC."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "sg_egress_1" {
  description = "A list of egress rules for the security group in the first VPC."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "route_table_name_1" {
  description = "The name of the route table for the first VPC."
  type        = string
}


variable "nacl_name_1" {
  description = "The name of the network ACL for the first VPC."
  type        = string

}
variable "nacl_ingress_1" {
  description = "A list of ingress rules for the network ACL in the first VPC."
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
    action     = string
    rule_no    = number
  }))
}
variable "nacl_egress_1" {
  description = "A list of egress rules for the network ACL in the first VPC."
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
    action     = string
    rule_no    = number
  }))
}

variable "ec2_name_1" {
  description = "The name of the EC2 instance in the first VPC."
  type        = string
}

variable "tags_1" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
}
//////// Zone 2 variables //////////
variable "vpc_name_2" {
  description = "The name of the second VPC to create."
  type        = string
}

variable "vpc_cidr_2" {
  description = "The CIDR block for the second VPC."
  type        = string
}

variable "availability_zone_2" {
  description = "The availability zone for the second subnet."
  type        = string
}

variable "subnet_cidr_2" {
  description = "The CIDR block for the second subnet."
  type        = string
}

variable "subnet_name_2" {
  description = "The name of the second subnet."
  type        = string
}

variable "security_group_name_2" {
  description = "The name of the security group for the second VPC."
  type        = string
}

variable "security_group_description_2" {
  description = "The description of the security group for the second VPC."
  type        = string
}

variable "sg_ingress_2" {
  description = "A list of ingress rules for the security group in the second VPC."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "sg_egress_2" {
  description = "A list of egress rules for the security group in the second VPC."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "route_table_name_2" {
  description = "The name of the route table for the second VPC."
  type        = string
}

variable "nacl_name_2" {
  description = "The name of the network ACL for the second VPC."
  type        = string
}
variable "nacl_ingress_2" {
  description = "A list of ingress rules for the network ACL in the second VPC."
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
    action     = string
    rule_no    = number
  }))
}

variable "nacl_egress_2" {
  description = "A list of egress rules for the network ACL in the second VPC."
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
    action     = string
    rule_no    = number
  }))
}
variable "ec2_name_2" {
  description = "The name of the EC2 instance in the second VPC."
  type        = string
}

variable "tags_2" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
}

//////// Common variables //////////
variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "eu-west-1"
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames for the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support for the VPC."
  type        = bool
  default     = true
}

variable "vpc_peering_connection_name" {
  description = "The name of the VPC peering connection."
  type        = string
}

variable "ec2_ami" {
  description = "The AMI ID for the EC2 instances."
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instances."
  type        = string
}
