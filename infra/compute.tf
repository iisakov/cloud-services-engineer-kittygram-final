resource "yandex_compute_disk" "boot-disk" {
  name     = "artisan-boot-disk"
  type     = "network-hdd"
  zone     = var.yc_default_zone
  size     = 1
}

# Создание ВМ
resource "yandex_compute_instance" "vm" {
  name = "artisan-vm"
  platform_id = "standard-v2"

  resources {
    cores  = 2
    memory = 0.5
    core_fraction = 5
  }



  boot_disk {
    disk_id = yandex_compute_disk.boot-disk.id
    auto_delete = true
    initialize_params {
      image_id = var.ubuntu_2004
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}