resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.num
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "mod" {
  source = "./mod"
  count  = 1
}
