resource "aws_instance" "parent" {
  count = 2
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

