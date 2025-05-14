provider "null" {}

resource "null_resource" "upload_file" {
  provisioner "file" {
    source      = "${path.module}/example.txt" # Локальный файл
    destination = "/tmp/example.txt"          # Путь на сервере

    connection {
      type        = "ssh"
      host        = var.server_ip
      user        = var.ssh_user
      private_key = var.private_key
    }
  }
}