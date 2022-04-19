provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
