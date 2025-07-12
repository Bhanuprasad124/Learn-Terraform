provider "aws" {
    region = "us-east-1"
}


variable "ami" {
    description = "value for ami "
  
}

variable "instance_type" {
    description = "select a instance type"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "stage"="t2.medium"
      "prod"="t2.medium"
    }
  
}

module "bhanu-module" {
    source = "./module/ec2_intaance"
    instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")
    ami = var.ami
  
}