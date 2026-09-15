terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-02"
    key            = "compute/day_02/terraform.tfstate"
    region         = "ap-south-1"
 }
}