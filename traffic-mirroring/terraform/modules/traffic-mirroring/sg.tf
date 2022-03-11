resource "aws_security_group" "ec2" {
  name   = "ec2"
  vpc_id = aws_vpc.vpc_a.id
  tags   = merge(local.common_tags,
  {
    Name = "ec2"
  })
}

resource aws_security_group_rule "egress_all" {
  type              = "egress"
  cidr_blocks       = [var.cidr_all]
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  security_group_id = aws_security_group.ec2.id
}

resource aws_security_group_rule "ingress_http" {
  type              = "ingress"
  security_group_id = aws_security_group.ec2.id
  cidr_blocks       = [var.subnet_cidr_block]
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}


resource aws_security_group_rule "ingress_to_ssh" {
  type              = "ingress"
  cidr_blocks       = [var.cidr_all]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.ec2.id
  to_port           = 22
}