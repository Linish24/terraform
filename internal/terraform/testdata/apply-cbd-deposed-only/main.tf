resource "aws_instance" "bar" {
  lifecycle {
    create_before_destroy = true
  }
  ebs_optimized = true
  monitoring = true
}
