resource "aws_instance" "foo" {
  count = 2
  foo   = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
