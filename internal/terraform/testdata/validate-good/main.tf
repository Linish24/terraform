resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
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
