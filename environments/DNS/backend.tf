terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "dns/test/terraform.tfstate"
    region         = "ap-south-1"
 }
}