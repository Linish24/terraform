resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}
