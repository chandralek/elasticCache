terraform {
  backend "s3" {
    bucket = "tfstaterobo"
    key    = "nonprod/elasticCache/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-locking"
  }
}

//Import states

data "terraform_remote_state" "VPC" {
  backend = "s3"
  config = {
    bucket = "tfstaterobo"
    key    = "nonprod/vpc/terraform.tfstate"
    region = "us-west-2"
  }
}