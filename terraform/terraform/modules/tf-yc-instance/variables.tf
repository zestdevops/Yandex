variable "yc_zone" {}
#   description = "Yandex Cloud zone"
#   type = string
#   default = "ru-central1-a"
#}

variable "platform_id" {
#   description = "Type of processor YA Cloud"
#   type = string
#   default = "standard-v3"
}

variable "image_id" {
#   description = "Image YA Cloud"
#   type = string
#   default = "fd80qm01ah03dkqb14lc"
}

variable "size" {
#   description = "Size boot disk"
#   type = number
#   default = 53
}

variable "name" {
#   description = "Name VM"
#   type = string
#   default = "praktika-std-028-30"
}

#variable "instance_subnet_id" {
#   description = Subnet id VM
#   type = string
#   default = 
#}

variable "instance_subnet_id" {
   type = string
}

variable "cpu_core" {}

variable "memory" {}
