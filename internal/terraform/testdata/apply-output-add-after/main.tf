provider "aws" {}

resource "aws_instance" "test" {
		foo = "${format("foo%d", count.index)}"
		count = 2
  monitoring = true
  ebs_optimized = true
}
