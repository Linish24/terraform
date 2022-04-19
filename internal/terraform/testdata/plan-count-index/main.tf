resource "aws_instance" "foo" {
  count = 2
  foo   = "${count.index}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
