module "sg_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/security-group?ref=main"

  vpc_id      = module.vpc_1.vpc_id
  name        = var.security_group_name_1
  description = var.security_group_description_1
  ingress     = var.sg_ingress_1
  egress      = var.sg_egress_1
  tags        = var.tags_1
}

module "sg_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/security-group?ref=main"

  vpc_id      = module.vpc_2.vpc_id
  name        = var.security_group_name_2
  description = var.security_group_description_2
  ingress     = var.sg_ingress_2
  egress      = var.sg_egress_2
  tags        = var.tags_2
}