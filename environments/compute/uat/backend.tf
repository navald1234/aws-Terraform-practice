terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "compute/ec2/uat/terraform.tfstate"
    region         = "ap-south-1"
 }
}