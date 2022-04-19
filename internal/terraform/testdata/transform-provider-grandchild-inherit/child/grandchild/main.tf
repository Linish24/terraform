provider "aws" {
  alias = "baz"
}

resource "aws_instance" "baz" {
  provider = "aws.baz"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
