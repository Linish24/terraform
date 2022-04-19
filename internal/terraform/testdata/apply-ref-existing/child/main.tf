variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
