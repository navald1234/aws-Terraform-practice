terraform {
  backend "s3" {
    bucket         = "terraform-backend-tfstate-day-03"
    key            = "Storage/s3-bucket/dev/test/terraform.tfstate"
    region         = "ap-south-1"
 }
}