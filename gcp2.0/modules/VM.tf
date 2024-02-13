resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var. machine_type_name
  zone         = var.zone_name
 
  tags = ["foo", "bar"]
 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
 
  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }
 
  network_interface {
    network = "default"
 
    access_config {
      // Ephemeral public IP
    }
  }
 
  metadata = {
    foo = "bar"
  }
 
  metadata_startup_script = "echo hi > /test.txt"
   lifecycle {
  #  ignore_changes = all
  }
}
resource "google_compute_disk" "default" {
  name  = var.disk_name
  type  = "pd-ssd"
  zone  = "us-central1-a"
  image = "debian-11-bullseye-v20220719"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
 
