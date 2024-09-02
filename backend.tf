terraform {
  backend "s3" {
    bucket         = "bucket-name-sanket-2"
    key            = "terraform/state"
    region         = "us-east-1"  # Match this with the AWS region
  }
}

