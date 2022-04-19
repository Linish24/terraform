variable "num" {}

resource "aws_instance" "bar" {
    count = "${var.num}"
    foo = "bar${count.index}"
  monitoring = true
  ebs_optimized = true
}

output "output" {
    value = "${join(",", aws_instance.bar.*.foo)}"
}
