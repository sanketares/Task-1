provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}


# Create a VPC
resource "aws_vpc" "my_vpc-2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-vpc-2"
  }
}






