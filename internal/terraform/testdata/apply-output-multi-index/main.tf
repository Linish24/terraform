resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "foo_num" {
  value = "${aws_instance.bar.0.foo}"
}
