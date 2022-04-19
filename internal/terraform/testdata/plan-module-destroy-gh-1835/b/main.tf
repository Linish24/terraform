variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
