resource "aws_instance" "foo" {
  count = 5
  foo   = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "${join(",", aws_instance.foo.*.foo)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
