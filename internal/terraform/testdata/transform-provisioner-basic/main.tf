resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}
