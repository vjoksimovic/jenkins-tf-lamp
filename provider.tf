provider "aws" {
  profile                  = ""
  region                   = var.aws_region
  shared_credentials_files = ["~/.aws/credentials"]
}