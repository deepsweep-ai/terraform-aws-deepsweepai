terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Example resource (can be swapped out later)
resource "aws_s3_bucket" "example" {
  bucket = "deepsweepai-terraform-example-${random_pet.this.id}"
  acl    = "private"

  tags = {
    Name = "DeepSweepAI Example Bucket"
  }
}

resource "random_pet" "this" {
  length = 2
}
