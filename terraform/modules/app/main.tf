resource "yandex_compute_instance" "app" {
  name = var.name

  labels = {
    tags = "reddit-app"
  }
  resources {
    cores         = 2
    memory        = 2
    core_fraction = 5
    gpus          = 0
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = yandex_compute_instance.app.network_interface[0].nat_ip_address
    user        = "ubuntu"
    private_key = file(var.private_key_path)
    agent       = false
    timeout     = "1m"
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    inline = ["export DATABASE_URL=${var.dbip}"]
  }
  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}
