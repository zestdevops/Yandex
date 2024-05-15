#output "instance_subnet_id" {
#   value = module.tf-yc-network.instance_subnet_id.subnet_ids
#}   
output "ip_address_local" {
   value = module.tf-yc-instance.ip_address
}

output "nat_ip_address" {
   value = module.tf-yc-instance.nat_ip_address
}

#output "zones" {
#   value = module.tf-yc-network.instance_subnet_id
#}
