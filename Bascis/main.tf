resource "aws_instance" "bhanu_instance" {
    ami = var.ami
    key_name = "demo"
    instance_type = var.instance_type

    tags = {
      Name = "demo-instance" 
    }
  
}
