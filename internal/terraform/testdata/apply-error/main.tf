resource "aws_instance" "foo" {
  value = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
