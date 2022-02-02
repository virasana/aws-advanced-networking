resource "aws_security_group" "vpc_a_sg" {
  name   = "vpc_a_sg"
  vpc_id = aws_vpc.vpc_a.id
  tags   = merge(local.common_tags,
  {
    Name = "vpc_a_sg"
  })
}

resource aws_security_group_rule "vpc_a_sg_rule_egress_all" {
  type              = "egress"
  cidr_blocks       = [
    "0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  security_group_id = aws_security_group.vpc_a_sg.id
}

resource aws_security_group_rule "vpc_a_ingress_to_nlb" {
  type              = "ingress"
  cidr_blocks       = [var.network_vpc_central_cidr]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.vpc_a_sg.id
  to_port           = 443
}