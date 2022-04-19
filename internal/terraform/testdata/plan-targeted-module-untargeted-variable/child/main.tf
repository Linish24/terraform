variable "id" {}

resource "aws_instance" "mod" {
  value = "${var.id}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
