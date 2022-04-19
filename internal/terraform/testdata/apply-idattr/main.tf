resource "aws_instance" "foo" {
  num = 42
  ebs_optimized = true
  monitoring = true
}
