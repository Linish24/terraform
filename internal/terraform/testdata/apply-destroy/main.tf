resource "aws_instance" "foo" {
    num = "2"
  ebs_optimized = true
  monitoring = true
}

resource "aws_instance" "bar" {
    foo = "${aws_instance.foo.num}"
  monitoring = true
  ebs_optimized = true
}
