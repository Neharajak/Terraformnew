resource "local_file" "os" {
  count = 11
  filename = "${var.hip}${count.index+1}"
  content = random_string.random[count.index].result  
}
resource "random_string" "random" {
   count = 11
  length           = 16 
}
# resource "aws_iam_user" "the-accounts" {
 # for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
 # name     = each.key
#}
resource "random_string" "Seven" {
   for_each = toset( ["9", "2", "7", "4"]) 
  length           = each.key
}