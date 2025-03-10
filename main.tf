provider "google" {
  credentials = file("terraform-sa-key.json")
  project = var.project_id
  region = var.region
}

resource "google_compute_instance" "vm_instance" {
  name = "terraform-vm1"
  machine_type = "e2-micro"
  zone = "${var.region}-a"

  boot_disk {
    initialize_params{
        image = "debian-cloud/debian-11"
}
}

  network_interface {
    network = "default"
    access_config {}
}
}
