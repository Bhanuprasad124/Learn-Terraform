terraform {
  backend "s3" {
    bucket = "chantibigbucket"
    key = "chanti/terraform.tfstate"
    region = "us-east-1"
  }
}