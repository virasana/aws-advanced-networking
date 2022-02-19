resource "aws_vpc" "vpc_a" {
  cidr_block           = var.network_vpc_a_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = merge(local.common_tags,
  {
    Name = "vpc-a"
  })
}
