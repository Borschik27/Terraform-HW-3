output "vm_list" {
  value = [
    for vm in [
      for vms in [
        yandex_compute_instance.db,
        yandex_compute_instance.web
      ] : vms
    ] : [
      for instance in vm :
      {
        name = instance.name
        id   = instance.id
        fqdn = instance.fqdn
      }
    ]
  ]
}

