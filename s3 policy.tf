provider "aws" {
  region = "us-east-1"
  
}

# =================================
variable "bucket-name" {
  default = "nayeemaiolos"
}
#================================

resource "aws_s3_bucket" "create-s3-bucket" {

  bucket = "${var.bucket-name}"

  acl = "private"

  lifecycle_rule {
    id = "archive"
    enabled = true
  }

  versioning {
    enabled = true
  }

  tags = {
    Enviroment: "TEST"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket_metric" "enable-metrics-bucket" {
  bucket = "${var.bucket-name}"
  name   = "EntireBucket"
}
