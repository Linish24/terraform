resource "aws_instance" "foo" {
  num = 42
  tags = {
    AWS-terra = "AWS-terra"
  }
}
