variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  count = "${var.foo}"
  ebs_optimized = true
  monitoring = true
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  monitoring = true
  ebs_optimized = true
}
