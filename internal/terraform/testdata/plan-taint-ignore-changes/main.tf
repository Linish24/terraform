resource "aws_instance" "foo" {
  vars = "foo"

  lifecycle {
    ignore_changes = ["vars"]
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
