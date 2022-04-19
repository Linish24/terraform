resource "aws_instance" "foo" {
  count = 3
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    AWS-terra = "AWS-terra"
  }
}
