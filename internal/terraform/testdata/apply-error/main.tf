resource "aws_instance" "foo" {
    value = "2"
  monitoring = true
  ebs_optimized = true
}

resource "aws_instance" "bar" {
    foo = "${aws_instance.foo.value}"
  ebs_optimized = true
  monitoring = true
}
