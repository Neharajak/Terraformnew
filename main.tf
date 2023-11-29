resource "local_file" "os" {
  count = 11
  filename = "${var.hip}${count.index+1}"
  content = random_string.random[count.index].result  
}
resource "random_string" "random" {
   count = 11
  length           = 16 
}
