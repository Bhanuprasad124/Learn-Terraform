provider "aws" {
    region = "us-east-1"

}

resource "aws_s3_bucket" "bhanubucket" {
    bucket = "myfrindbhanubucket"
    tags = {
      Name="This-is-my-test-bucket"
      
    }
}