variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  ebs_optimized = true
  monitoring = true
}
