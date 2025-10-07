terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }
  }

  backend s3 {
  bucket = "82-remote-state-pr"
  key = "expense-infra-ecr"
  region = "us-east-1"
  use_lockfile = false
 }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}