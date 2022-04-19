variable "foo" {}

provider "aws" {
  foo = "${var.foo}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
