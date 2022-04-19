resource "aws_instance" "bar" {
    foo = "bar"
  monitoring = true
  ebs_optimized = true
}
