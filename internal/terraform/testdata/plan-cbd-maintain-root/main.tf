resource "aws_instance" "foo" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "out" {
  value = "${aws_instance.foo.0.id}"
}
