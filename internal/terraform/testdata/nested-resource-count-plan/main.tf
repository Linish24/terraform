resource "aws_instance" "foo" {
  count = 2
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  count = "${length(aws_instance.foo.*.id)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "baz" {
  count = "${length(aws_instance.bar.*.id)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
