
module "sg" {
  source = "./module/security_groups"

  for_each = var.sg_data

  name        = each.value.sg_name
  description = each.value.sg_description
  sg_ingress  = each.value.sg_ingress
  sg_egress   = each.value.sg_egress
  vpc_id      = var.vpc_id
  
  tags        = local.common_tags
}

/*
module "my_vpc" {
  source         = "./module/vpc"
  vpc_cidr       = var.vpc_cidr
  tennancy       = var.tennancy
  vpc_id         = module.my_vpc.vpc_id
  subnet_cidr    = var.subnet_cidr
  az             = var.az
  public_ip_asgn = var.public_ip_asgn
}
*/

module "my_instance" {

  for_each = var.ec2_data

 
  source            = "./module/ec2"
  #instance_count    = var.instance_count
  instance_type     = each.value.instance_type             //var.instance_type
  ami               = each.value.ami_id                    //var.ami_id
  subnet_id         = each.value.subnet_id                 //module.my_vpc.my_subnet_id
  security_group_id = module.sg[each.value.sg_name_key].security_group.id
  key_name          = module.key_pair.private_key_name     //var.key_name
  ec2_name          = each.value.ec2_name


  tags = local.common_tags
  }

module "key_pair" {
  source = "./module/key_pair"

  name   = var.key_name
  #public_key = tls_private_key.private_key.public_key_openssh
}
