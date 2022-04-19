resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
