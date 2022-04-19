variable "foo" {}

provider "aws" {
  value = "${var.foo}"
}

resource "aws_instance" "test" {
  value = "hello"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
