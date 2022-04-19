resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  foo = "${aws_instance.foo.id}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
