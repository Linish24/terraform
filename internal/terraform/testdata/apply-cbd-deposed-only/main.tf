resource "aws_instance" "bar" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
