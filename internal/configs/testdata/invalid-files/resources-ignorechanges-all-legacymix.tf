resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  monitoring = true
  ebs_optimized = true
}
