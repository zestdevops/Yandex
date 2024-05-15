#resource "yandex_compute_disk" "boot_disk" {
#  name = var.name
#  image_id = var.image_id
#  zone = var.zone
#  size = var.size
#}
resource "yandex_compute_instance" "vm-praktika" {
  name = var.name
  platform_id = var.platform_id
  zone = var.yc_zone
  # Конфигурация ресурсов:
  # количество процессоров и оперативной памяти
  resources {
    cores  = var.cpu_core
    memory = var.memory
  }

  # Загрузочный диск:
  # здесь указывается образ операционной системы
  # для новой виртуальной машины
  boot_disk {
    initialize_params {
     size = var.size
     image_id = var.image_id
    }
    #disk_id = yandex_compute_disk.boot_disk.id
  }
  
  network_interface {
    nat = true
    subnet_id = var.instance_subnet_id  
}

  metadata = {
    user-data = "${file("~/scripts/user_add.yaml")}"
    #   ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
  scheduling_policy {
    preemptible = false
  }
}
