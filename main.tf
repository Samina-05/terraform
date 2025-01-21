provider "aws" {
region="us-east-1"
access_key=var.ak
secret_key=var.sk
}

resource "aws_instance" "private_instances" {
  ami                    = "ami-05576a079321f21f8"
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    name = "private_instance"
  }
}