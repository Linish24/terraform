resource "aws_instance" "bar" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
