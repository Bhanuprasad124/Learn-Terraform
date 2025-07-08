provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "bhanu_instance" {
    instance_type = "t2.micro"
    ami= "ami-020cba7c55df1f615"
    tags = {
      Name="Bhanu-instance"
    }
}

resource "aws_s3_bucket" "mybigbucket" {
  bucket = "chantibigbucket"
  
}