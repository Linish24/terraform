resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
