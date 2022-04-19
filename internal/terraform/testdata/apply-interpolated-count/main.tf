variable "instance_count" {
  default = 1
}

resource "aws_instance" "test" {
  count = "${var.instance_count}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "dependent" {
  count = "${length(aws_instance.test)}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
