terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "compute/day_04/file_provisners/terraform.tfstate"
    region         = "ap-south-1"
 }
}