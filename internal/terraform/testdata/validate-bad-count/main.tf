resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
