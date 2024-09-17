resource "yandex_compute_disk" "data_disks" {
  count = 3

  name = "${var.dd_name}-${count.index}"
  size = var.stor_size
  type = var.disk_type
  zone = var.default_zone
  folder_id = var.folder_id
}

resource "yandex_compute_instance" "storage" {
  name        = var.stor_name
  platform_id = var.platform_id
  resources {
    cores         = var.web_cores
    memory        = var.web_memory
    core_fraction = var.web_fract
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.my_image.image_id
      name     = var.stor_name
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.data_disks

    content {
      disk_id = secondary_disk.value.id
    }
  }

  metadata = {
    ssh-keys = "${var.vm_user}:${var.vms_ssh_root_key}"

    user-data = <<-EOF
      #cloud-config
      runcmd:
        - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    EOF
  }

  hostname   = var.stor_name
  depends_on = [ yandex_compute_instance.web ]
}