variable "ami_1" {
  type    = string
  default = "ami-0460c1c2e20f0c29e"
}

variable "i_type" {
  default = "t2.micro"
  type    = string
}

variable "test_list" {
  type        = list(any)
  description = "sample list"
}

variable "test_map" {
  type        = map(string)
  description = "sample map"
}

locals {
  ami_id = "ami-00fa32593b478ad6e"
}
