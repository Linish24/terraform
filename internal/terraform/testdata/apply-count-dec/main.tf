resource "aws_instance" "foo" {
    foo = "foo"
    count = 2
  ebs_optimized = true
  monitoring = true
}

resource "aws_instance" "bar" {
    foo = "bar"
  monitoring = true
  ebs_optimized = true
}
