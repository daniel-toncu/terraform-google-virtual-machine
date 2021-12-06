resource "google_compute_instance" "main" {
  name         = var.machine_name
  machine_type = var.machine_type

  can_ip_forward = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
