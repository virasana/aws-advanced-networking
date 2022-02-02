resource "aws_subnet" "vpc_central_subnet_a" {
  vpc_id            = aws_vpc.vpc_central.id
  availability_zone = var.vpc_central_availablility_zone_a
  tags              = merge(local.common_tags,
  {
    Name              = "vpc_central_subnet_a"
    availability_zone = var.vpc_central_availablility_zone_a
  })
  cidr_block        = var.vpc_central_subnet_a_cidr
}