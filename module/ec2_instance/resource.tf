resource "aws_instance" "bhanu-instance" {
    instance_type = var.instance_type
    key_name = "demo"
    ami = var.ami
    tags={
        Name="module-instance"
    }
  
}