module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.bad}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
