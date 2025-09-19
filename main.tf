provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_computea_engine" "example" {
  name = "example-instance"
  machine_type = "e2-micro"
  zone = var.zone

  boot_disk {
    initialize_params {
      image = "debain-cloud/debain-11"
    }
  }
  network_interface {
    network = "default"
    access_config {}
}

resource "google_storage_bucket" "example" {
  name = "example-bucket"
  location = var.region
}