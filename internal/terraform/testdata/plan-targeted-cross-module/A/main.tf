resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
