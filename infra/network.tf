# Создание сети
resource "yandex_vpc_network" "network" {
  name = "artisan_network"
}

# Создание подсети
resource "yandex_vpc_subnet" "subnet" {
  name           = "artisan_subnet"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}