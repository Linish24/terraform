resource "aws_instance" "foo" {
  count = 3
  monitoring = true
  ebs_optimized = true
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  ebs_optimized = true
  monitoring = true
}
