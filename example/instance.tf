module "test" {
  source = "../gcp2.0/modules"
  vm_name = "demo23"
  machine_type_name= "n2-standard-2"
  zone_name = "us-central1-a"
  disk_name = "test"
}

