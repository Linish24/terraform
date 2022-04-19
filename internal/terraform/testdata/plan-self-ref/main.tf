resource "aws_instance" "web" {
  foo = "${aws_instance.web.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
