provider "aws" {
    alias = "eu"
}

resource "aws_instance" "foo" {
    provider = "aws.eu"
  monitoring = true
  ebs_optimized = true
}
