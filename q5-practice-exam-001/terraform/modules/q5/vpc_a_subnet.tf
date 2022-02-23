resource "aws_subnet" "vpc_a_subnet" {
  vpc_id            = aws_vpc.vpc_a.id
  availability_zone = var.vpc_a_availability_zone
  tags              = merge(local.common_tags,
  {
    Name              = "vpc_a_subnet"
    availability_zone = var.vpc_a_availability_zone
  })
  cidr_block        = var.vpc_a_subnet_cidr_block
}