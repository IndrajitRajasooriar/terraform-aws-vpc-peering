module "vpc_peering_connection" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/vpc-peering?ref=main"

  name        = var.vpc_peering_connection_name
  vpc_id      = module.vpc_1.vpc_id
  peer_vpc_id = module.vpc_2.vpc_id
  auto_accept = true
  tags        = var.tags_1
}