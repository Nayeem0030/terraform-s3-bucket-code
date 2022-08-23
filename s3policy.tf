provider "aws" {
  region = "us-east-1"

}

# =================================
variable "bucket-name" {
  default = "aioloanayeem"
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
    Enviroment: "QA"
  }
