resource "aws_internet_gateway" "vpc_b_igw" {
  vpc_id = aws_vpc.vpc_b.id
  tags   = merge(local.common_tags,
  {
    Name = "igw_vpc_b"
  })
}