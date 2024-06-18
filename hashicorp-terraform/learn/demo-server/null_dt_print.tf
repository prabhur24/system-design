resource "null_resource" "sample" {
  #provisioner "local-exec" {
  #command = "echo jsonencode(${var.test_list}) jsonencode(${var.test_map}) > sample_dt.txt"
  #}
}


resource "null_resource" "sample1" {
  #test = [for item in var.test_list : "Hello, this is a dummy message! $item"]
  for_each = toset(var.test_list)

  provisioner "local-exec" {
    command = "echo ${each.value}"
  }
}

resource "null_resource" "sample2" {
  #test = [for item in var.test_list : "Hello, this is a dummy message! $item"]
  #for_each = toset(var.test_map)

  #provisioner "local-exec" {
  #  command = "echo ${each.key}  ${each.value}"
  #}
}


