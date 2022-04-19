variable "foo" {}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
