terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "Networking/vpc/vpc_peering/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = false

  }
}