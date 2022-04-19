resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
