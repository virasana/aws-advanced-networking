module "general" {
  source                   = "../../modules/traffic-mirroring"
  aws_account              = var.aws_account
  aws_region               = var.aws_region
  ec2_ami_type             = var.ec2_ami_type
  ec2_instance_type        = var.ec2_instance_type
  ec2_ssh_key_name         = var.ec2_ssh_key_name
  environment              = var.environment
  cidr_all                 = var.cidr_all
  vpc_cidr                 = var.vpc_cidr
  tags_category            = var.tags_category
  tags_owner               = var.tags_owner
  availability_zone        = var.availability_zone
  ec2_sender_private_ip    = var.ec2_sender_private_ip
  ec2_recipient_private_ip = var.ec2_recipient_private_ip
  ec2_wildcard_private_ip  = var.ec2_wildcard_private_ip
  subnet_cidr_block        = var.subnet_cidr_block
}