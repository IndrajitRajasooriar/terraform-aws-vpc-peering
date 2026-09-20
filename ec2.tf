module "ec2_1" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/ec2?ref=main"

  name                   = var.ec2_name_1
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = module.subnet_1.subnet_id
  vpc_security_group_ids = [module.sg_1.security_group_id]
  tags                   = var.tags_1
}

module "ec2_2" {
  source = "github.com/IndrajitRajasooriar/terraform-modules//modules/ec2?ref=main"

  name                   = var.ec2_name_2
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = module.subnet_2.subnet_id
  vpc_security_group_ids = [module.sg_2.security_group_id]
  tags                   = var.tags_2
}