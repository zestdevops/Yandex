variable "network_zones" {
   description = "Yandex network zones"
   type = set(string)
   default = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
}

variable "yc_zone" {}
