resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"
}
