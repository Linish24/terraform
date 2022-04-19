resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}
