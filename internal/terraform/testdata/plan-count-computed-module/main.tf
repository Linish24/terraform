resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
