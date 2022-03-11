module "general" {
  source                  = "../../modules/q8"
  aws_account             = var.aws_account
  aws_region              = var.aws_region
  ec2_ami_type            = var.ec2_ami_type
  ec2_instance_type       = var.ec2_instance_type
  ec2_ssh_key_name        = var.ec2_ssh_key_name
  environment             = var.environment
  network_cidr_all        = var.network_cidr_all
  network_vpc_a_cidr      = var.network_vpc_a_cidr
  network_vpc_b_cidr      = var.network_vpc_b_cidr
  tags_category           = var.tags_category
  tags_owner              = var.tags_owner
  vpc_a_availability_zone = var.vpc_a_availability_zone
  vpc_a_ec2_private_ip    = var.vpc_a_ec2_private_ip
  vpc_a_subnet_cidr_block = var.vpc_a_subnet_cidr_block
  vpc_b_availability_zone = var.vpc_b_availability_zone
  vpc_b_ec2_private_ip    = var.vpc_b_ec2_private_ip
  vpc_b_subnet_cidr_block = var.vpc_b_subnet_cidr_block
}