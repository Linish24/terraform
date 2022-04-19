variable "mod_count" { }

resource "aws_instance" "foo" {
  count = "${var.mod_count}"
  ebs_optimized = true
  monitoring = true
}
