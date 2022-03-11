resource "aws_route_table" "vpc_b_routes" {
  vpc_id = aws_vpc.vpc_b.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_b_igw.id
  }

  route {
    cidr_block                = var.vpc_a_subnet_cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.vpcab.id
  }

  tags        = merge(local.common_tags,
  {
    Name = "vpc_b_routes"
  })
}

resource "aws_route_table_association" "vpc_b" {
  route_table_id = aws_route_table.vpc_b_routes.id
  subnet_id      = aws_subnet.vpc_b_subnet.id
}