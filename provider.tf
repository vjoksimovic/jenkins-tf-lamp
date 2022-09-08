provider "aws" {
  profile                  = "veljo"
  region                   = var.aws_region
  shared_credentials_files = ["/root/.aws/credentials"]
  shared_config_files      = ["/root/.aws/config"]
}