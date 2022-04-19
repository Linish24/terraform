resource "aws_instance" "a" {
  foo = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20]
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "b" {
  foo = "${aws_instance.a.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
