resource "aws_instance" "foo" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
