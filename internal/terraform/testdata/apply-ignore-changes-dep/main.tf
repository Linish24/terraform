resource "aws_instance" "foo" {
  count = 2
  ami   = "ami-bcd456"
  lifecycle {
    ignore_changes = ["ami"]
  }
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_eip" "foo" {
  count    = 2
  instance = "${aws_instance.foo.*.id[count.index]}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
