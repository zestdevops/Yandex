data "yandex_vpc_network" "default" {
   name = "default"
}

data "yandex_vpc_subnet" "default" {
   for_each = toset(var.network_zones)
#   name = "${data.yandex_vpc_network.default.name}-${each.key}"
   name = "default-${each.key}"
  # subnet_id = var.yc_zone
}
