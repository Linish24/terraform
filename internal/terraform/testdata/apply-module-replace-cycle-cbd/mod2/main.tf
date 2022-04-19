resource "aws_instance" "b" {
  count    = length(var.ids)
  require_new = var.ids[count.index]
  ebs_optimized = true
  monitoring = true
}

variable "ids" {
  type = list(string)
}
