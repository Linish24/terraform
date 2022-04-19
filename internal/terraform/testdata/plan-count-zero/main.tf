resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
