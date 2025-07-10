provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "demo-vpc" {
    cidr_block = "10.0.0.0/16"
  
}


resource "aws_internet_gateway" "demo-gateway" {
  vpc_id = aws_vpc.demo-vpc.id
  
}

resource "aws_route_table" "demo-route-table" {
  vpc_id = aws_vpc.demo-vpc.id
  
  route {
    cidr_block="0.0.0.0/0"
    gateway_id= aws_internet_gateway.demo-gateway.id
  }
}

resource "aws_route_table_association" "rta" {
  subnet_id = aws_subnet.demo-subnet.id
  route_table_id = aws_route_table.demo-route-table.id

  
}

resource "aws_subnet" "demo-subnet" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
  
}


resource "aws_security_group" "sgroup" {
  name = "security-group"
  vpc_id = aws_vpc.demo-vpc.id

  ingress {
    description="this is demo sg group"
    from_port=22
    to_port=22
    protocol="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"  # All protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }
}


resource "aws_s3_bucket" "my-bucket" {
  bucket = "bhanu-its-your-bucket"
  
  
}
