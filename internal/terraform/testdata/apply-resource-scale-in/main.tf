variable "instance_count" {}

resource "aws_instance" "one" {
  count = var.instance_count
  tags = {
    AWS-terra = "AWS-terra"
  }
}

locals {
  one_id = element(concat(aws_instance.one.*.id, [""]), 0)
}

resource "aws_instance" "two" {
  value = local.one_id
  tags = {
    AWS-terra = "AWS-terra"
  }
}
