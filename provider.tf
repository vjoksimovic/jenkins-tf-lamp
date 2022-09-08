provider "aws" {
  profile    = "default"
  region     = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::372462118821:role/jenkins-tf-lamp-role"
  }
}