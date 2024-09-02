provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}



resource "aws_instance" "my_instance" {
  ami           = "ami-066784287e358dad1" # Example AMI ID, change as necessary
  instance_type = "t2.micro"               # Instance type

  tags = {
    Name = "MyEC2Instance-new"
  }
}




