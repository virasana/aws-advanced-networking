resource "aws_route_table" "routes" {
  vpc_id = aws_vpc.vpc_a.id

  route {
    cidr_block = var.cidr_all
    gateway_id = aws_internet_gateway.igw.id
  }

  tags        = merge(local.common_tags,
  {
    Name = "routes"
  })
}

resource "aws_route_table_association" "vpc" {
  route_table_id = aws_route_table.routes.id
  subnet_id      = aws_subnet.subnet.id
}