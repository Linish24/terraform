resource "aws_instance" "foo" {
  count = 13
  tags = {
    AWS-terra = "AWS-terra"
  }
}
