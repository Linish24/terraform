resource "aws_instance" "foo" {
  count = 3
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  tags = {
    AWS-terra = "AWS-terra"
  }
}
