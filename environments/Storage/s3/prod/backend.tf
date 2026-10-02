terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "Storage/s3-bucket/prod/test/terraform.tfstate"
    region         = "ap-south-1"
 }
}