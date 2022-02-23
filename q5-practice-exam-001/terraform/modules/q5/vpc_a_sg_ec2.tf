resource "aws_security_group" "vpc_a_sg_ec2" {
  name   = "vpc_a_sg_ec2"
  vpc_id = aws_vpc.vpc_a.id
  tags   = merge(local.common_tags,
  {
    Name = "vpc_a_sg_ec2"
  })
}

resource aws_security_group_rule "vpc_a_sg_ec2__rule_egress_all" {
  type              = "egress"
  cidr_blocks       = [
    "0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  security_group_id = aws_security_group.vpc_a_sg_ec2.id
}

resource aws_security_group_rule "vpc_a_sg_ec2_ingress_http" {
  type              = "ingress"
  security_group_id = aws_security_group.vpc_a_sg_ec2.id
  cidr_blocks       = ["${var.vpc_a_nlb_ip_address}/32"]
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
}


resource aws_security_group_rule "vpc_a_ingress_to_ssh" {
  type              = "ingress"
  cidr_blocks       = [
    var.network_vpc_central_cidr,
    "0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.vpc_a_sg_ec2.id
  to_port           = 22
}