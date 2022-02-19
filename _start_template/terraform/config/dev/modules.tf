module "q5" {
  source                   = "../../modules/q5"
  aws_account              = "624368621157"
  aws_region               = "eu-west-2"
  environment              = var.environment
  network_vpc_a_cidr       = var.network_vpc_a_cidr
  network_vpc_b_cidr       = var.network_vpc_b_cidr
  network_vpc_central_cidr = var.network_vpc_central_cidr
}
