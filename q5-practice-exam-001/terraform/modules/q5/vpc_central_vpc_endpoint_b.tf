resource "aws_vpc_endpoint" "vpc_endpoint_b" {
  vpc_id              = aws_vpc.vpc_central.id
  service_name        = aws_vpc_endpoint_service.vpc_b_endpoint_service.service_name
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.vpc_central_sg_b.id]
  subnet_ids          = [aws_subnet.vpc_central_subnet_b.id]
  private_dns_enabled = false
}