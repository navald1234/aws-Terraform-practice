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