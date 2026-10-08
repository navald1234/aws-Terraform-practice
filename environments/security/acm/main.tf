locals {

  common_tags = {

    Environment = var.environment

    Project = var.project_name

    ManagedBy = var.managed_by
  }
}

module "acm_module" {

  source = "../../../modules/security/acm"

  environment = var.environment
  aws_region = var.aws_region

  domain_name = var.domain_name

  subject_alternative_names = [

    var.root_domain
  ]

  hosted_zone_id = data.terraform_remote_state.dns.outputs.hosted_zone_id

  common_tags = local.common_tags
}