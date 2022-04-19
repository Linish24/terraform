resource "aws_instance" "baz" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
