provider "google" {
  credentials = file("keys.json")
  project     = "DevOps"
  zone 	 = "us-east4-c"
  region      = "us-east4"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance-test"
  machine_type = "g1-small"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}


