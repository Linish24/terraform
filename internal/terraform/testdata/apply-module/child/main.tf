resource "aws_instance" "baz" {
    foo = "bar"
  ebs_optimized = true
  monitoring = true
}
