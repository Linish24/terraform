resource "aws_instance" "web" {
  foo   = "${aws_instance.web.0.foo}"
  count = 4
  tags = {
    AWS-terra = "AWS-terra"
  }
}
