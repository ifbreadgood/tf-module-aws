terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.99.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
  default_tags {
    tags = merge(var.tags, {location: "us-east-2"})
  }
}
provider "aws" {
  region = "us-east-1"
  alias  = "backup"
  default_tags {
    tags = merge(var.tags, {location: "us-east-1"})
  }
}