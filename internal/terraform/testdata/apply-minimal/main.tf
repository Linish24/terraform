resource "aws_instance" "foo" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}
