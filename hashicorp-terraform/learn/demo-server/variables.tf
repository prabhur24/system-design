variable "ami_1" {
  type    = string
  default = "ami-00fa32593b478ad6e1"
}

variable "i_type" {
  default = "t2.nano"
  type = string
}

locals {
  ami_id = "ami-00fa32593b478ad6e"
}
