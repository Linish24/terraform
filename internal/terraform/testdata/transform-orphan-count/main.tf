resource "aws_instance" "foo" {
  count = 3
  tags = {
    AWS-terra = "AWS-terra"
  }
}
