resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${aws_instance.foo.foo}"
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
