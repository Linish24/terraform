resource "aws_instance" "bar" {
  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
