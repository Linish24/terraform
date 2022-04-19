variable "instance_count" {
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "submod" {
  source = "./submod"
  list   = ["${aws_instance.foo.*.id}"]
}
