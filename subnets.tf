module "subnet_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/subnet?ref=main"

  vpc_id            = module.vpc_1.vpc_id
  name              = var.subnet_name_1
  cidr_block        = var.subnet_cidr_1
  availability_zone = var.availability_zone_1
  tags              = var.tags_1
}

module "subnet_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/subnet?ref=main"

  vpc_id            = module.vpc_2.vpc_id
  name              = var.subnet_name_2
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.availability_zone_2
  tags              = var.tags_2
}