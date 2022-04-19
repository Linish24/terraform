resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
