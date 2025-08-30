# terraform-aws-deepsweepai

Minimal starter module for DeepSweep AI.

## Usage

```hcl
module "deepsweepai" {
  source  = "deepsweep-ai/deepsweepai/aws"
  version = "0.0.1"

  region             = "us-east-1"
  bucket_name_prefix = "deepsweepai-demo"
  tags = {
    Owner = "you@example.com"
  }
}
