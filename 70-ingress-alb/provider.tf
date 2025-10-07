terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }

  backend s3 {
  bucket = "82s-tf-remote-state-dev-pr"
  key = "sg-infra-eks-ingress"
  region = "us-east-1"
  use_lockfile = false
 }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}