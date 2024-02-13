provider "google" {
  credentials = file("Key2.json")
  project     = var.project
}
