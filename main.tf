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


resource "aws_dynamodb_table" "terraform_lock1" {
  name         = "terraform-lock5"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}





