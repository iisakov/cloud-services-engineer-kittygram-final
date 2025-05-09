variable "yc_folder_id" {
  description = "ID каталога в Yandex Cloud"
  type        = string
  default     = "b1gh2fm1j7os8rsicr03"
}

variable "yc_token" {
  description = "Токен в Yandex Cloud"
  type        = string
}

variable "yc_cloud_id" {
  description = "ID облака в Yandex Cloud"
  type        = string
  default     = "b1ghhma8lf5gt5i51sqf"
}

variable "yc_default_zone" {
  description = "Зона в Yandex Cloud"
  type        = string
  default     = "ru-central1-d"
}

variable "ubuntu_2004" {
  description = "ID образа Ubuntu 20.04 LTS"
  type        = string
  default     = "fd8bbhtvdodbbranefoe"
}
