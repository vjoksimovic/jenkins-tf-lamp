provider "aws" {
  profile                  = ""
  region                   = var.aws_region
  shared_credentials_file = ["$HOME/.aws/credentials"]
}