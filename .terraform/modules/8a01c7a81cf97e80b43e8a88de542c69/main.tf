resource "google_compute_instance" "default" {
  count  = "${length(var.name)}" 
  name         = "${var.name[count.index]}"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "windows-server-2016-dc-v20190514"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  tags = ["user-vm", "server-vm", "compute-vm", "jumphost-vm"]

  

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}