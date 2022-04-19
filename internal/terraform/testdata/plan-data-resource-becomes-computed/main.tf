resource "aws_instance" "foo" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
