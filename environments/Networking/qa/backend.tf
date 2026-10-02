terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "Networking/vpc/qa/terraform.tfstate"
    region         = "ap-south-1"
 }
}