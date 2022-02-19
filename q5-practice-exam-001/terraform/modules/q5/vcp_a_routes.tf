resource "aws_route_table" "subnet_vpc_a" {
  vpc_id = aws_vpc.vpc_a.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_a_igw.id
  }
}

resource "aws_route_table_association" "vpc_a" {
  route_table_id = aws_route_table.subnet_vpc_a.id
  subnet_id      = aws_subnet.vpc_a_subnet.id
}