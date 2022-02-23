resource "aws_route_table" "subnet_vpc_central" {
  vpc_id = aws_vpc.vpc_central.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpc_central.id
  }
}

resource "aws_route_table_association" "vpc_central" {
  route_table_id = aws_route_table.subnet_vpc_central.id
  subnet_id      = aws_subnet.vpc_central_subnet_a.id
}