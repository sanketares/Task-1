provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}


# Create a VPC
resource "aws_vpc" "my_vpc-2" {
  cidr_block = "10.0.0.0/32"

  tags = {
    Name = "my-vpc-2"
  }
}



# Create an S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "bucket-name-sanket-2"  # Ensure this bucket name is unique across AWS

  tags = {
    Name = "my-bucket"
  }
}



