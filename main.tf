provider "aws" {
  region = var.region
}

resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name_prefix}-${random_pet.suffix.id}"
  force_destroy = true

  tags = merge(
    var.tags,
    { Name = "DeepSweepAI Example Bucket" }
  )
}
