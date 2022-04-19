resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  ebs_optimized = true
  monitoring = true
}
