resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
