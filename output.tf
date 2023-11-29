output "instance" {
  value = random_string.random[0].result
}
output "linux" {
  value = random_string.random[1].result
}
