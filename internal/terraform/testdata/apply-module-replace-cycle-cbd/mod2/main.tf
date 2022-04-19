resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    AWS-terra = "AWS-terra"
  }
}

variable "ids" {
  type = list(string)
}
