resource "aws_instance" "shared" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
