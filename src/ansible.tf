resource "local_file" "ansible_inventory" {
  filename = "${path.module}/inventory.yaml"
  content  = templatefile("${path.module}/ansible_inventory.tpl", {
    web_vms = [
      for vm in yandex_compute_instance.web : {
        name        = vm.name,
        external_ip = vm.network_interface.0.nat_ip_address,
        fqdn        = vm.fqdn != "" ? vm.fqdn : vm.hostname
        user        = var.vm_user
      }
    ],
    db_vms = [
      for vm in yandex_compute_instance.db : {
        name        = vm.name,
        external_ip = vm.network_interface.0.nat_ip_address,
        fqdn        = vm.fqdn != "" ? vm.fqdn : vm.hostname
        user        = var.vm_user
      }
    ],
    storage_vms = [{
      name        = yandex_compute_instance.storage.name,
      external_ip = yandex_compute_instance.storage.network_interface.0.nat_ip_address,
      fqdn        = yandex_compute_instance.storage.fqdn != "" ? yandex_compute_instance.storage.fqdn : yandex_compute_instance.storage.hostname
      user        = var.vm_user
    }]
  })
  depends_on = [ yandex_compute_instance.storage ]
}
