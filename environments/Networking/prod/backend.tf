terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "Networking/vpc/prod/terraform.tfstate"
    region         = "ap-south-1"
 }
}