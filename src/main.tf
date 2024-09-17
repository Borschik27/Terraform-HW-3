resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

data "yandex_compute_image" "my_image" {
  family = var.image_family
}

resource "null_resource" "ansible_apply" {
  provisioner "local-exec" {
    command = <<EOT
      ansible-playbook -i ${path.module}/inventory.yaml playbook.yml
    EOT

    environment = {
      ANSIBLE_HOST_KEY_CHECKING = "false"
    }
  }

  depends_on = [ local_file.ansible_inventory ]
}