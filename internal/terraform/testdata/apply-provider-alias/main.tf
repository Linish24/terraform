provider "aws" {
  alias = "bar"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo      = "bar"
  provider = "aws.bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
