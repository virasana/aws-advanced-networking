resource "aws_internet_gateway" "igw_vpc_central" {
  vpc_id = aws_vpc.vpc_central.id
  tags   = merge(local.common_tags,
  {
    Name = "igw_vpc_central"
  })
}