module "vpc_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc?ref=main"

  name                 = var.vpc_name_1
  cidr_block           = var.vpc_cidr_1
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags                 = var.tags_1
}

module "vpc_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc?ref=main"

  name                 = var.vpc_name_2
  cidr_block           = var.vpc_cidr_2
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags                 = var.tags_2
}

///////////// VPC Endpoints /////////////////
module "vpc_endpoint_ssm_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc-endpoint-ec2?ref=main"

  vpc_id            = module.vpc_1.vpc_id
  service_name      = "com.amazonaws.eu-west-1.ssm"
  vpc_endpoint_type = "Interface"

  subnet_ids         = [module.subnet_1.subnet_id]
  security_group_ids = [module.sg_ssm_1.security_group_id]

  private_dns_enabled = true

  name = "ssm-endpoint-1"

  tags = var.tags_1
}

module "vpc_endpoint_ssmmessages_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc-endpoint-ec2?ref=main"

  vpc_id            = module.vpc_1.vpc_id
  service_name      = "com.amazonaws.eu-west-1.ssmmessages"
  vpc_endpoint_type = "Interface"

  subnet_ids         = [module.subnet_1.subnet_id]
  security_group_ids = [module.sg_ssm_1.security_group_id]

  private_dns_enabled = true

  name = "ssmmessages-endpoint-1"

  tags = var.tags_1
}

module "vpc_endpoint_ssm_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc-endpoint-ec2?ref=main"

  vpc_id            = module.vpc_2.vpc_id
  service_name      = "com.amazonaws.eu-west-1.ssm"
  vpc_endpoint_type = "Interface"

  subnet_ids         = [module.subnet_2.subnet_id]
  security_group_ids = [module.sg_ssm_2.security_group_id]

  private_dns_enabled = true

  name = "ssm-endpoint-2"

  tags = var.tags_2
}

module "vpc_endpoint_ssmmessages_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc-endpoint-ec2?ref=main"

  vpc_id            = module.vpc_2.vpc_id
  service_name      = "com.amazonaws.eu-west-1.ssmmessages"
  vpc_endpoint_type = "Interface"

  subnet_ids         = [module.subnet_2.subnet_id]
  security_group_ids = [module.sg_ssm_2.security_group_id]

  private_dns_enabled = true

  name = "ssmmessages-endpoint-2"

  tags = var.tags_2
}