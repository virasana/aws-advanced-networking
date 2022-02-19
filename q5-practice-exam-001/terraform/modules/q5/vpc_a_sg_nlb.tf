resource "aws_security_group" "vpc_a_sg_nlb" {
  name   = "vpc_a_sg_nlb"
  vpc_id = aws_vpc.vpc_a.id
  tags   = merge(local.common_tags,
  {
    Name = "vpc_a_sg_nlb"
  })
}

resource aws_security_group_rule "vpc_a_ingress_to_nlb" {
  type              = "ingress"
  cidr_blocks       = [var.network_vpc_central_cidr]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.vpc_a_sg_nlb.id
  to_port           = 443
}