resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
