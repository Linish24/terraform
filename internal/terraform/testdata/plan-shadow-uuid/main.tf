resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
