variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  count = "${var.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    AWS-terra = "AWS-terra"
  }
}
