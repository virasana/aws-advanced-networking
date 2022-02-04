resource "tls_private_key" "vpc_central_private_key" {
  algorithm = "RSA"
}

resource "tls_self_signed_cert" "vpc_central_self_signed_cert" {
  key_algorithm   = "RSA"
  private_key_pem = tls_private_key.vpc_central_private_key.private_key_pem

  subject {
    common_name  = "q5.practice-exam.internal"
    organization = "Karunasoft Consulting Ltd"
  }

  validity_period_hours = 12

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

resource "aws_acm_certificate" "vpc_central_cert" {
  private_key      = tls_private_key.vpc_central_private_key.private_key_pem
  certificate_body = tls_self_signed_cert.vpc_central_self_signed_cert.cert_pem
}