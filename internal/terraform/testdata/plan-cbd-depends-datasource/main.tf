resource "aws_instance" "foo" {
  count    = 2
  num      = "2"
  computed = data.aws_vpc.bar[count.index].id

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}

data "aws_vpc" "bar" {
  count = 2
  foo   = count.index
}
