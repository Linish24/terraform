resource "aws_instance" "foo" {
  num = "3"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  num = aws_instance.foo.num
  tags = {
    AWS-terra = "AWS-terra"
  }
}
