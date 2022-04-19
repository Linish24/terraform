provider "aws" {}

resource "aws_instance" "test" {
		foo = "${format("foo%d", count.index)}"
		count = 2
  ebs_optimized = true
  monitoring = true
}
