resource "aws_vpc" "vpc_b" {
  cidr_block           = var.network_vpc_b_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = merge(local.common_tags,
  {
    Name = "vpc-b"
  })
}

