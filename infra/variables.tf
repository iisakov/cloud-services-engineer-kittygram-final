# =========
# Variables
# =========

# general
variable "folder_id" {
  description = "ID каталога в Yandex Cloud"
  type        = string
  default     = "b1gh2fm1j7os8rsicr03"
}

variable "cloud_id" {
  description = "ID облака в Yandex Cloud"
  type        = string
  default     = "b1ghhma8lf5gt5i51sqf"
}

variable "zone" {
  description = "Зона в Yandex Cloud"
  type        = string
  default     = "ru-central1-a"
}

# vm
variable "image_family" {
  description = "семейство дистрибутива образа Ubuntu 24.04 LTS"
  type        = string
}

variable "vm_name" {
  description = "Название виртуальной машины в Yandex Cloud"
  type        = string
}

variable "platform_id" {
  description = "ID платформы процессора в Yandex Cloud"
  type        = string
}

variable "cores" {
  description = "Количество ядер"
  type        = number
}

variable "memory" {
  description = "ID образа Ubuntu 24.04 LTS"
  type        = number
}

variable "core_fraction" {
  description = "Процент выделяемого ресурса на ВМ"
  type        = number
}


variable "disk_type" {
  description = "ID образа Ubuntu 24.04 LTS"
  type        = string
}

variable "disk_size" {
  description = "ID образа Ubuntu 24.04 LTS"
  type        = number
}

variable "ssh_public_key" {
  description = "Публичный ключ ssh"
  type    = string
}


# vps
variable "vpc_name" {
  description = "ID образа Ubuntu 24.04 LTS"
  type        = string
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string,
    zone   = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}