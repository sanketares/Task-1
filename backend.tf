terraform {
  backend "s3" {
    bucket         = "bucket-name-sanket-2"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east1"
    dynamodb_table = "your-dynamodb-table"
  }
}

