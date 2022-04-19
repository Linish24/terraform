module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  monitoring = true
  ebs_optimized = true
}
