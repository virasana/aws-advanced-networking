resource "aws_security_group" "vpc_central_alb_sg" {
  name   = "vpc_central_sg"
  vpc_id = aws_vpc.vpc_central.id
  tags   = merge(local.common_tags,
  {
    Name = "vpc_central_sg"
  })
}

resource aws_security_group_rule "vpc_central_ingress_to_alb" {
  type              = "ingress"
  cidr_blocks       = [var.network_cidr_all]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.vpc_central_alb_sg
  to_port           = 443
}