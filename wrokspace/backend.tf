terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "compute/wrokspace/terraform.tfstate"
    region         = "ap-south-1"
 }
}