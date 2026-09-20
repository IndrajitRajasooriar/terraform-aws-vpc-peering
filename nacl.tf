module "nacl_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/network-acl?ref=main"

  vpc_id  = module.vpc_1.vpc_id
  name    = var.nacl_name_1
  ingress = var.nacl_ingress_1
  egress  = var.nacl_egress_1
  tags    = var.tags_1
}

module "nacl_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/network-acl?ref=main"

  vpc_id  = module.vpc_2.vpc_id
  name    = var.nacl_name_2
  ingress = var.nacl_ingress_2
  egress  = var.nacl_egress_2
  tags    = var.tags_2
}

module "network_acl_association_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/network-acl-association?ref=main"

  subnet_id      = module.subnet_1.subnet_id
  network_acl_id = module.nacl_1.network_acl_id
}

module "network_acl_association_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/network-acl-association?ref=main"

  subnet_id      = module.subnet_2.subnet_id
  network_acl_id = module.nacl_2.network_acl_id
}