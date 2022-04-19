variable "num" {}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "bar${count.index}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "output" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
