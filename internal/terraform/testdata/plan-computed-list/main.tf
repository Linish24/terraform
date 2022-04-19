resource "aws_instance" "foo" {
  num     = "2"
  compute = "list.#"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.list.0
  tags = {
    AWS-terra = "AWS-terra"
  }
}
