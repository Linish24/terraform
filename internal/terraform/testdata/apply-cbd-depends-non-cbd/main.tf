resource "aws_instance" "foo" {
  require_new = "yes"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  require_new = "yes"
  value       = "${aws_instance.foo.id}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}
