variable "things" {}

resource "aws_instance" "bar" {
  baz   = "baz"
  count = 2
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "foo" {
  foo = "${join(",", aws_instance.bar.*.baz)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
