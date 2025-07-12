provider "aws" {
    region = "us-east-1"
  
}

variable "instance_type" {
    description = "I am gona select t2.micro by default"
  
}

variable "ami" {
    description = "value for ami"
  
}

resource "aws_instance" "demo-instance" {
    instance_type = var.instance_type
    ami = var.ami
}