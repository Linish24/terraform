variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
