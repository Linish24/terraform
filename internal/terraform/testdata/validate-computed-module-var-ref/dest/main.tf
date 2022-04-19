variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
