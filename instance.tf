provider "google" {
  credentials = var.creds
  project     = "stately-magpie-355709"
  zone 	 = "us-west2-a"
  region      = "us-west2"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance-test"
  machine_type = "g1-small"

  boot_disk {
    initialize_params {
      image = "Debian GNU/Linux 10"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}


