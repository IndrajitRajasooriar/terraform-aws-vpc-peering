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