resource "aws_acm_certificate" "cert" {
    domain_name = var.domain_name

  subject_alternative_names = var.subject_alternative_names

  validation_method = "DNS"

  lifecycle {

    create_before_destroy = true
  }

  tags = merge(

    var.common_tags,

    {
      Name = "${var.environment}-acm-certificate"
    }
  )
}
