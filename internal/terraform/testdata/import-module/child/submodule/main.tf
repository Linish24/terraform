resource "aws_instance" "foo" {
  id = "baz"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
