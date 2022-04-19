variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  ebs_optimized = true
  monitoring = true
}

output "should-be-11" {
  value = "${element(aws_instance.bar.*.foo, 11)}"
}
