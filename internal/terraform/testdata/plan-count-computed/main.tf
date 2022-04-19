resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
