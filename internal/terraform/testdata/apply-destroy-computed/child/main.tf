variable "value" {}

resource "aws_instance" "bar" {
  value = "${var.value}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
