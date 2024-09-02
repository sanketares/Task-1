provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}


data "aws_ami" "redhat" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["RHEL-9*HVM-2024*-x86_64*GP3"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.redhat.id
  instance_type = "t2.micro"               # Instance type

  tags = {
    Name = "MyEC2Instance-new"
  }
}








