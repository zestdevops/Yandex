#output "yandex_vpc_subnet" {
#   value = data.yandex_vpc_subnet.default
#} 

output "instance_subnet_id" {
   value = data.yandex_vpc_subnet.default
}


output "instance_subnet_id1" {
   value = data.yandex_vpc_network.default
}
