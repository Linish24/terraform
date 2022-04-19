resource "aws_instance" "foo" {
  connection {
    user = "test"
  }
  provisioner "shell" {
    test_string = "test"
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
