resource "aws_instance" "foo" {
  count = 1
  foo   = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.0.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
