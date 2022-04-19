variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "baz" {
  count = "${var.num}"
  foo   = "baz-${element(aws_instance.bar.*.foo, count.index)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.baz.*.foo, 11)}"
}
