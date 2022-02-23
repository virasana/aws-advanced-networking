resource "aws_vpc_endpoint" "vpc_endpoint_a" {
  vpc_id              = aws_vpc.vpc_central.id
  service_name        = aws_vpc_endpoint_service.vpc_a_endpoint_service.service_name
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.vpc_central_sg_a.id]
  subnet_ids          = [aws_subnet.vpc_central_subnet_a.id]
  private_dns_enabled = false
}

//resource "aws_route53_record" "vpc_a_endpoint_service" {
//  zone_id = aws_route53_zone.internal.zone_id
//  name    = "vpc-a.${aws_route53_zone.internal.name}"
//  type    = "CNAME"
//  ttl     = "300"
//  records = [
//    aws_vpc_endpoint.vpc_endpoint_a.dns_entry[0]["dns_name"]]
//}

// resource aws_security_group "vpc_a_endpoint" {}