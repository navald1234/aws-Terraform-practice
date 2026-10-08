module "s3_module" {
  source = "../../../../modules/storage/s3"



  bucket_name = var.bucket_name

  Environment = var.Environment
  aws_region = var.aws_region
  project_name = var.project_name
  tags = {
    Environment = var.Environment
    Project     = var.project_name
  }

}


############################################################
# CloudFront
############################################################

module "cdn_module" {

  source = "../../../../modules/storage/cdn"

  bucket_name = var.bucket_name
  Environment = var.Environment

  

  bucket_arn = module.s3_module.bucket_arn

  bucket_regional_domain_name = module.s3_module.bucket_regional_domain_name

  aliases = [

    var.frontend_domain

  ]

  acm_certificate_arn = "arn:aws:acm:us-east-1:285065163040:certificate/6aa9ab82-b998-4b37-a281-46c5c461b7ff"

  

}
############################################################
# Route53
############################################################

resource "aws_route53_record" "frontend" {

  zone_id = data.terraform_remote_state.dns.outputs.hosted_zone_id

  name = var.frontend_domain

  type = "A"

  alias {

    name = module.cdn_module.distribution_domain_name

    zone_id = module.cdn_module.hosted_zone_id

    evaluate_target_health = false

  }

}