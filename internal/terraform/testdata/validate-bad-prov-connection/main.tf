resource "aws_instance" "foo" {
  provisioner "shell" {
    test_string = "test"
    connection {
      user = "test"
    }
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
