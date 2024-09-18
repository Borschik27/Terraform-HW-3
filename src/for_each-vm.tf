resource "yandex_compute_instance" "db" {
    for_each    = { for vm in var.each_vm : vm.vm_name => vm }
    name        = each.value.vm_name
    platform_id = var.platform_id

    resources {
        cores         = each.value.cpu
        memory        = each.value.ram
        core_fraction = each.value.core_fraction
    }

    boot_disk {
        initialize_params {
            image_id = data.yandex_compute_image.my_image.id
            size     = each.value.disk_volume
            name     = each.value.vm_name
        }
    }

  # Сетевой интерфейс и группа безопасности
    network_interface {
        subnet_id          = yandex_vpc_subnet.develop.id
        nat                = true
#        security_group_ids = [yandex_vpc_security_group.example.id]
    }

  # Метаданные
    metadata = {
        serial-port-enable = 1
        ssh-keys           = "${var.vm_user}:${var.vms_ssh_root_key}"
    }

    hostname   = each.value.vm_name
    depends_on = [ yandex_vpc_security_group.example ]
}


/*
for_each = { for vm in var.each_vm : vm.vm_name => vm }
Это выражение использует цикл for, который превращает список объектов в карту (ключ-значение). В данном случае:

vm — это текущий элемент из списка var.each_vm.
vm.vm_name — это ключ, который мы используем для карты. В этом примере ключом будет имя виртуальной машины (main и replica).
vm — это значение, которое представляет каждый объект в списке.

yc compute instance list
yc compute instance get
yc vpc security-group get


*/
