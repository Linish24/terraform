resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
