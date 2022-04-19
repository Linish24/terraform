resource "aws_instance" "test" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
