resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  monitoring = true
  ebs_optimized = true
}
