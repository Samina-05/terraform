provider "aws" {
region="us-east-1"
access_key="AKIAU6VTTI352XKZGM2V"
secret_key="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"
}

resource "aws_instance" "private_instances" {
  ami                    = "ami-05576a079321f21f8"
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    name = "private_instance"
  }
}