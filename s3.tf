provider "aws" {

region ="us-west-2"

}

resource "aws_s3_bucket" "examples" {
  bucket = "my-exampell-bucket"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.examples.id
  acl    = "private"
}
