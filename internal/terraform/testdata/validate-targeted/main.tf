resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}
