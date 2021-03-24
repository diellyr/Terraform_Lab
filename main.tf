provider "aws" {
  region  = "sa-east-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "476091327772-artefatos02"
    key    = "terraform-lab.tfstate"
    region = "sa-east-1"
  }
}


