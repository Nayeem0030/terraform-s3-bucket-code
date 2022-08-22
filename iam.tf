provider "aws" {
  region = "us-west-2"

resource "aws_iam_user" "IAMUSERs"{
    name = "bhaskar"
}
