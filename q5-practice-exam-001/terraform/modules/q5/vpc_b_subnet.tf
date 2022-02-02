resource "aws_subnet" "vpc_b_subnet" {
  vpc_id            = aws_vpc.vpc_b.id
  availability_zone = var.vpc_b_availability_zone
  tags              = merge(local.common_tags,
  {
    Name              = "vpc_b_subnet"
    availability_zone = var.vpc_b_availability_zone
  })
  cidr_block        = var.vpc_b_subnet_cidr_block
}