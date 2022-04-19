variable "value" {}

resource "aws_instance" "bar" {
    value = "${var.value}"
  monitoring = true
  ebs_optimized = true
}
