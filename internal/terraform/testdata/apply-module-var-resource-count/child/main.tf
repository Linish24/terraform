variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
