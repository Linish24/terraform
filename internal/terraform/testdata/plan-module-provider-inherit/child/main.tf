resource "aws_instance" "foo" {
  from = "child"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
