variable "num" {}

resource "aws_instance" "foo" {
  count = "${var.num}"
  value = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  ami = "special"

  value = "${join(",", aws_instance.foo.*.id)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
