module "route_table_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/route-table?ref=main"

  vpc_id = module.vpc_1.vpc_id
  name   = var.route_table_name_1
  routes = [
    {
      cidr_block                = "10.1.0.0/16"
      vpc_peering_connection_id = module.vpc_peering_connection.id
    }
  ]
  tags = var.tags_1
}

module "route_table_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/route-table?ref=main"

  vpc_id = module.vpc_2.vpc_id
  name   = var.route_table_name_2
  routes = [
    {
      cidr_block                = "10.0.0.0/16"
      vpc_peering_connection_id = module.vpc_peering_connection.id
    }
  ]
  tags = var.tags_2
}

module "route_table_association_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/route-table-subnet-association?ref=main"

  subnet_id      = module.subnet_1.subnet_id
  route_table_id = module.route_table_1.route_table_id
}

module "route_table_association_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/route-table-subnet-association?ref=main"

  subnet_id      = module.subnet_2.subnet_id
  route_table_id = module.route_table_2.route_table_id
}