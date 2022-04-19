variable "foo" {}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
