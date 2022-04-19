resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo         = "${aws_instance.foo.id}"
  require_new = "yes"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
