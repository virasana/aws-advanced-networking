resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_a.id
  tags   = merge(local.common_tags,
  {
    Name = "igw_vpc_a"
  })
}