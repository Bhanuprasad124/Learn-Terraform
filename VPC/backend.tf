terraform {
  backend "s3" {
    bucket = "bhanu-its-your-bucket"
    region = "us-east-1"
    key = "bhanu/terraform.tfstate"
    
  }
}