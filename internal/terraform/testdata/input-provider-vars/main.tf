variable "foo" {}

resource "aws_instance" "foo" {
  foo = "${var.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
