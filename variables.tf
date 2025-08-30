variable "region" {
  description = "AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name_prefix" {
  description = "Optional prefix for the S3 bucket name. A random suffix is appended to ensure uniqueness."
  type        = string
  default     = "deepsweepai-terraform-example"
}

variable "tags" {
  description = "Common tags to apply to resources."
  type        = map(string)
  default     = {
    Project = "DeepSweepAI"
  }
}
