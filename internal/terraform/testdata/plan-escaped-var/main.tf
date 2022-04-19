resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
