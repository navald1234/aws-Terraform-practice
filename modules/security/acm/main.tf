resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain_name
  validation_method = "DNS"
  region = var.region

  tags = {
    Environment = "test"
  }

  lifecycle {
    create_before_destroy = true
  }
}
