output "ip_address" {
   value = yandex_compute_instance.vm-praktika.network_interface.0.ip_address
}
#yandex_compute_instance.hahaha.network_interface.0.nat_ip_address
output "nat_ip_address" {
   value = yandex_compute_instance.vm-praktika.network_interface.0.nat_ip_address
}

