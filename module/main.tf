provider "aws" {
    region = "us-east-1"
}

module "aws_instance" {
    source = "./ec2_instance"
}
module "aws_s3_bucket" {
    source = "./s3_bucket"
  
}