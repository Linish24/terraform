resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
