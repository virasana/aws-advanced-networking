resource "aws_subnet" "vpc_central_subnet_b" {
  vpc_id            = aws_vpc.vpc_central.id
  availability_zone = var.vpc_central_availablility_zone_b
  tags              = merge(local.common_tags,
  {
    Name              = "vpc_central_subnet_b"
    availability_zone = var.vpc_central_availablility_zone_b
  })
  cidr_block        = var.vpc_central_subnet_b_cidr
}