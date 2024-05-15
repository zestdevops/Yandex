module "tf-yc-instance" {
   source = "./modules/tf-yc-instance"
  # nat = true
  # instance_subnet_id = module.tf-yc-network.network_zones
   #instance_subnet_id = data.yandex_vpc_network.default
   yc_zone = var.yc_zone
   instance_subnet_id = module.tf-yc-network.instance_subnet_id["${var.yc_zone}"].subnet_id
#   instance_subnet_id = module.tf-yc-network.yandex_vpc_network.subnet_ids[count.index]
#   instance_subnet_id = var.instance_subnet_id
   cpu_core = var.cpu_core
   memory = var.memory
   image_id = var.image_id
   platform_id = var.platform_id
   name = var.name
   size = var.size
}

module "tf-yc-network" {
   source = "./modules/tf-yc-network"
   #instance_subnet_id = data.yandex_vpc_network.default 
   #instance_subnet_id = var.instance_subnet_id
   yc_zone = var.yc_zone
}


