output "output" {
  value = "${aws_instance.foo.foo}"
}

resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
