provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    AWS-terra = "AWS-terra"
  }
}
