resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
