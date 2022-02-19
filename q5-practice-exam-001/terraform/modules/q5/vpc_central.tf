resource "aws_vpc" "vpc_central" {
  cidr_block           = var.network_vpc_central_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = merge(local.common_tags,
  {
    Name = "vpc-central"
  })
}