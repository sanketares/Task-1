terraform {
  backend "s3" {
    bucket         = "bucket-name-sanket-2"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock5"
  }
}

