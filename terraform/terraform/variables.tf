variable "folder" {}
 #  type = string
#   default = "b1gjdbgjfjmdu5atjah4"
#}

variable "cloud" {}
  # type = string 
 #  default = "b1g3jddf4nv5e9okle7p"
#}
variable "token" {}

variable "yc_zone" {
   type = string
   default = "ru-central1-a"
}

#variable "instance_subnet_id" {
#   default = module.tf-yc-network.yandex_vpc_network.subnet_ids
#}

variable "cpu_core" {
   type = number
   default = 2
}

variable "memory" {
   type = number
   default = 6
}

variable "platform_id" {
   description = "Type of processor YA Cloud"
   type = string
   default = "standard-v3"
}

variable "image_id" {
   description = "Image YA Cloud"
   type = string
   default = "fd80qm01ah03dkqb14lc"
}

variable "size" {
   description = "Size boot disk"
   type = number
   default = 53
}

variable "name" {
   description = "Name VM"
   type = string
   default = "praktika-std-028-30"
}
