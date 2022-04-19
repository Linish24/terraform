variable "instance_count" {
  default = 1
}

resource "aws_instance" "test" {
  count = "${var.instance_count}"
  monitoring = true
  ebs_optimized = true
}

resource "aws_instance" "dependent" {
  count = "${length(aws_instance.test)}"
  ebs_optimized = true
  monitoring = true
}
