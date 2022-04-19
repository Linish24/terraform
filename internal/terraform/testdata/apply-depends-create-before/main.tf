resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  tags = {
    AWS-terra = "AWS-terra"
  }
}
