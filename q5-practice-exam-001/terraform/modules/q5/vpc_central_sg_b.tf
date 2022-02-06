resource "aws_security_group" "vpc_central_sg_b" {
  name   = "vpc_central_b_sg"
  vpc_id = aws_vpc.vpc_central.id
  tags   = merge(local.common_tags,
  {
    Name = "vpc_central_b_sg"
  })
}

resource aws_security_group_rule "vpc_central_b_egress" {
  type              = "egress"
  cidr_blocks       = [
    "0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  security_group_id = aws_security_group.vpc_central_sg_b.id
}

resource aws_security_group_rule "vpc_central_b_ingress" {
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.vpc_central_sg_b.id
  to_port           = 443
}