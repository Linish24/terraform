variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
