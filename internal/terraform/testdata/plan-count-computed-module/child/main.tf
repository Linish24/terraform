variable "value" {}

resource "aws_instance" "bar" {
  count = "${var.value}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
