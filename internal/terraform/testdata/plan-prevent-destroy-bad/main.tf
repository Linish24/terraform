resource "aws_instance" "foo" {
  require_new = "yes"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
