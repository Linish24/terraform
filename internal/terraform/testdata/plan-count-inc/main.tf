resource "aws_instance" "foo" {
  foo   = "foo"
  count = 3
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
