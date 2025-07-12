provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
    description = "value of the ami"
    default = "ami-05ffe3c48a9991133"
  
}

resource "aws_instance" "bhnu-instance" {
    key_name = "demo"
    instance_type = "t2.micro"
    ami = var.ami
    tags = {
      Name = "demo-instance"
    }
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("demo.pem")
      host=self.public_ip
    
    }
    provisioner "file" {
        source = "app.py"
        destination = "/home/ubuntu/app.py"
    }
    provisioner "remote-exec" {
        inline = [ 
            "sudo apt update -y",
            "sudo apt install -y python3-pip",
            "cd home/ubuntu",
            "sudo pip3 install flask",
            "sudo python3 app.py"

         ]  
      
    }
  
}
