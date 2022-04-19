variable "input" {}

resource "aws_instance" "bar" {
  foo = "${var.input}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
