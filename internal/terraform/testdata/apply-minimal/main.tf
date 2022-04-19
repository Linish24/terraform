resource "aws_instance" "foo" {
  ebs_optimized = true
  monitoring = true
}

resource "aws_instance" "bar" {
  ebs_optimized = true
  monitoring = true
}
