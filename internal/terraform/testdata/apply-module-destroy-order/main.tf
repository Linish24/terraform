module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
