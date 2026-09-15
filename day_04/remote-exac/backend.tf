terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "compute/day_04/remote_exac/terraform.tfstate"
    region         = "ap-south-1"
 }
}