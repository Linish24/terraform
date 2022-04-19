resource "aws_instance" "bar" {
  num = "2"

  provisioner "shell" {
    command = "${aws_instance.bar.num}"
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
