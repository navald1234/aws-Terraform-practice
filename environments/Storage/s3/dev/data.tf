#######################################################
# Route53 Hosted Zone
#######################################################

#################################################
# DNS REMOTE STATE
#################################################

data "terraform_remote_state" "dns" {

  backend = "s3"

  config = {

    bucket         = "terraform-backend-tfstate-day-03"
    key            = "dns/test/terraform.tfstate"
    region         = "ap-south-1"
}
}
#######################################################
# ACM Remote State
#######################################################

data "terraform_remote_state" "acm_global" {

  backend = "s3"

  config = {

    bucket         = "terraform-backend-tfstate-day-03"
    key            = "security/acm/test/terraform.tfstate"
    region         = "ap-south-1"

  }

}