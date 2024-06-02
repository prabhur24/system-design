terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }

  //cloud {
  //workspaces {
  //  name = "test-workspace"
  //}
  //organization = "eto-pr"
  //}
}

provider "aws" {
  region  = "ap-south-1"
  alias   = "India"
  profile = "uis"
}

