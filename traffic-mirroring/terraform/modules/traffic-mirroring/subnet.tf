resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc_a.id
  availability_zone = var.availability_zone
  tags              = merge(local.common_tags,
  {
    Name              = "subnet"
    availability_zone = var.availability_zone
  })
  cidr_block        = var.subnet_cidr_block
}