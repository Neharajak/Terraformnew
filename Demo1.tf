resource "local_file" "games" {
  filename = "favorite-games"
  content  = "FIFA 23"
}
resource "local_file" "movie" {
  filename = "film"
  content  = "RRR"
}
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.2.2"
    }
  }
}
resource "local_file" "jedi" {
  filename = var.filename
  content  = var.content
}
variable "filename" {
  type = string
}
variable "content" {
  type = string
}
resource "local_file" "Neha" {
  filename = var.movie
  content  = var.first
}
variable "movie" {
  type = string
}


variable "first" {
  type    = string
  default = "demo"
}