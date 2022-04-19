module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
