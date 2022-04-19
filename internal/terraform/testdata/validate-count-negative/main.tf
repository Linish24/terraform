resource "aws_instance" "test" {
  count = "-5"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
