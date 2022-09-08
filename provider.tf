provider "aws" {
  profile    = ""
  region     = var.aws_region
  shared_credentials_files = ["/root/.aws/credentials"]
  shared_config_files = ["/root/.aws/config"]
#  assume_role {
#    role_arn = "arn:aws:iam::372462118821:role/jenkins-tf-lamp-role"
#  }
}