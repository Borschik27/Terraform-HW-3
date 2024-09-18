resource "yandex_compute_instance" "web" {
  count = 2

  name = "${var.web_name}-${count.index + 1}"

  platform_id = var.platform_id
  resources {
    cores         = var.web_cores
    memory        = var.web_memory
    core_fraction = var.web_fract
  }

    boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.my_image.id
      size     = var.web_ds
      name     = "${var.web_name}-${count.index + 1}"
    }
  }

  # Сетевой интерфейс и группа безопасности
  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  # Метаданные
  metadata = {
    serial-port-enable = 1
    ssh-keys           = "${var.vm_user}:${var.vms_ssh_root_key}"
  }
  
  hostname   = "${var.web_name}-${count.index + 1}"
  depends_on = [ yandex_compute_instance.db ]
}
