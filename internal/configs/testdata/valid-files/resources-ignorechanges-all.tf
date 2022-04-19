resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
