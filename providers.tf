provider "aws" {
  region = "us-east-1"
}
provider "kubernetes" {
  config_path = "~/.kube/config"
}

data "aws_availability_zones" "available" {
  state = "available"
  # Specify the region you're interested in
}
data "aws_caller_identity" "current" {}