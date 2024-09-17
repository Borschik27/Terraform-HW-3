# Terraform-HW-3
Задание 1

![Screenshot 2024-09-16 215645](https://github.com/user-attachments/assets/2b4696d0-f04f-4472-ade7-c3f86becbb5e)

Задание 2

2.1

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmju9f2vkuocv1rlrvj
id: fhmju9f2vkuocv1rlrvj
folder_id: b1gs98og2f2h12cvb2pj
created_at: "2024-09-16T19:26:57Z"
name: web-1
zone_id: ru-central1-a
platform_id: standard-v3
resources:
  memory: "2147483648"
  cores: "2"
  core_fraction: "20"
status: RUNNING
metadata_options:
  gce_http_endpoint: ENABLED
  aws_v1_http_endpoint: ENABLED
  gce_http_token: ENABLED
  aws_v1_http_token: DISABLED
boot_disk:
  mode: READ_WRITE
  device_name: fhmrm320sfrqlfemugkl
  auto_delete: true
  disk_id: fhmrm320sfrqlfemugkl
network_interfaces:
  - index: "0"
    mac_address: d0:0d:13:f2:5e:2f
    subnet_id: e9b4ld4hp422bfliajes
    primary_v4_address:
      address: 10.1.1.32
      one_to_one_nat:
        address: 89.169.150.127
        ip_version: IPV4
    security_group_ids:
      - enplpj89iqips6mklg5n
serial_port_settings:
  ssh_authorization: OS_LOGIN
gpu_settings: {}
fqdn: fhmju9f2vkuocv1rlrvj.auto.internal
scheduling_policy: {}
network_settings:
  type: STANDARD
placement_policy: {}
hardware_generation:
  legacy_features:
    pci_topology: PCI_TOPOLOGY_V1

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmsvcv4qt127fd5kjml
id: fhmsvcv4qt127fd5kjml
folder_id: b1gs98og2f2h12cvb2pj
created_at: "2024-09-16T19:26:57Z"
name: web-2
zone_id: ru-central1-a
platform_id: standard-v3
resources:
  memory: "2147483648"
  cores: "2"
  core_fraction: "20"
status: RUNNING
metadata_options:
  gce_http_endpoint: ENABLED
  aws_v1_http_endpoint: ENABLED
  gce_http_token: ENABLED
  aws_v1_http_token: DISABLED
boot_disk:
  mode: READ_WRITE
  device_name: fhm47r5i433qeknmc3q7
  auto_delete: true
  disk_id: fhm47r5i433qeknmc3q7
network_interfaces:
  - index: "0"
    mac_address: d0:0d:1c:fb:3e:4d
    subnet_id: e9b4ld4hp422bfliajes
    primary_v4_address:
      address: 10.1.1.21
      one_to_one_nat:
        address: 89.169.131.63
        ip_version: IPV4
    security_group_ids:
      - enplpj89iqips6mklg5n
serial_port_settings:
  ssh_authorization: OS_LOGIN
gpu_settings: {}
fqdn: fhmsvcv4qt127fd5kjml.auto.internal
scheduling_policy: {}
network_settings:
  type: STANDARD
placement_policy: {}
hardware_generation:
  legacy_features:
    pci_topology: PCI_TOPOLOGY_V1
```

```
 terraform destroy --auto-approve
data.yandex_compute_image.my_image: Reading...
yandex_vpc_network.develop: Refreshing state... [id=enp89c3c21e02r4gg4h5]
data.yandex_compute_image.my_image: Read complete after 1s [id=fd892vjp5gajiqr0g1b3]
yandex_vpc_subnet.develop: Refreshing state... [id=e9b4ld4hp422bfliajes]
yandex_vpc_security_group.example: Refreshing state... [id=enplpj89iqips6mklg5n]
yandex_compute_instance.web[0]: Refreshing state... [id=fhmju9f2vkuocv1rlrvj]
yandex_compute_instance.web[1]: Refreshing state... [id=fhmsvcv4qt127fd5kjml]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  - destroy

Terraform will perform the following actions:

  # yandex_compute_instance.web[0] will be destroyed
  - resource "yandex_compute_instance" "web" {
      - created_at                = "2024-09-16T19:26:57Z" -> null
      - folder_id                 = "b1gs98og2f2h12cvb2pj" -> null
      - fqdn                      = "fhmju9f2vkuocv1rlrvj.auto.internal" -> null
      - id                        = "fhmju9f2vkuocv1rlrvj" -> null
      - labels                    = {} -> null
      - metadata                  = {
.....
      - v6_cidr_blocks = [] -> null
      - zone           = "ru-central1-a" -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 5 to destroy.
yandex_compute_instance.web[0]: Destroying... [id=fhmju9f2vkuocv1rlrvj]
yandex_compute_instance.web[1]: Destroying... [id=fhmsvcv4qt127fd5kjml]
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 10s elapsed]
yandex_compute_instance.web[0]: Still destroying... [id=fhmju9f2vkuocv1rlrvj, 10s elapsed]
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 20s elapsed]
yandex_compute_instance.web[0]: Still destroying... [id=fhmju9f2vkuocv1rlrvj, 20s elapsed]
yandex_compute_instance.web[0]: Still destroying... [id=fhmju9f2vkuocv1rlrvj, 30s elapsed]
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 30s elapsed]
yandex_compute_instance.web[0]: Still destroying... [id=fhmju9f2vkuocv1rlrvj, 40s elapsed]
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 40s elapsed]
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 50s elapsed]
yandex_compute_instance.web[0]: Still destroying... [id=fhmju9f2vkuocv1rlrvj, 50s elapsed]
yandex_compute_instance.web[0]: Destruction complete after 51s
yandex_compute_instance.web[1]: Still destroying... [id=fhmsvcv4qt127fd5kjml, 1m0s elapsed]
yandex_compute_instance.web[1]: Destruction complete after 1m4s
yandex_vpc_security_group.example: Destroying... [id=enplpj89iqips6mklg5n]
yandex_vpc_subnet.develop: Destroying... [id=e9b4ld4hp422bfliajes]
yandex_vpc_security_group.example: Destruction complete after 0s
yandex_vpc_subnet.develop: Destruction complete after 3s
yandex_vpc_network.develop: Destroying... [id=enp89c3c21e02r4gg4h5]
yandex_vpc_network.develop: Destruction complete after 1s
```

2.2

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ terraform apply --auto-approve
data.yandex_compute_image.my_image: Reading...
data.yandex_compute_image.my_image: Read complete after 1s [id=fd892vjp5gajiqr0g1b3]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.db["main"] will be created
  + resource "yandex_compute_instance" "db" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
        }
      + name                      = "main"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)
.....
  # yandex_compute_instance.db["replica"] will be created
  + resource "yandex_compute_instance" "db" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
        }
      + name                      = "replica"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)
......
  # yandex_compute_instance.web[0] will be created
  + resource "yandex_compute_instance" "web" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
        }
      + name                      = "web-1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)
.....
  # yandex_compute_instance.web[1] will be created
  + resource "yandex_compute_instance" "web" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
        }
      + name                      = "web-2"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)
......
  # yandex_vpc_security_group.example will be created
  + resource "yandex_vpc_security_group" "example" {
      + created_at = (known after apply)
      + folder_id  = "b1gs98og2f2h12cvb2pj"
      + id         = (known after apply)
      + labels     = (known after apply)
      + name       = "example_dynamic"
      + network_id = (known after apply)
      + status     = (known after apply)

      + egress {
          + description       = "разрешить весь исходящий трафик"
          + from_port         = 0
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = -1
          + protocol          = "TCP"
          + to_port           = 65365
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }

      + ingress {
          + description       = "разрешить входящий  http"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 80
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
      + ingress {
          + description       = "разрешить входящий https"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 443
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
      + ingress {
          + description       = "разрешить входящий ssh"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 22
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
    }

  # yandex_vpc_subnet.develop will be created
  + resource "yandex_vpc_subnet" "develop" {
    }

Plan: 7 to add, 0 to change, 0 to destroy.
yandex_vpc_network.develop: Creating...
yandex_vpc_network.develop: Creation complete after 3s [id=enpkojo6jvahg1nc2bg1]
yandex_vpc_subnet.develop: Creating...
yandex_vpc_security_group.example: Creating...
yandex_vpc_subnet.develop: Creation complete after 0s [id=e9b87c414metl4op1uaa]
yandex_vpc_security_group.example: Creation complete after 1s [id=enp2lllhvmq5sr2arrkp]
yandex_compute_instance.db["replica"]: Creating...
yandex_compute_instance.db["main"]: Creating...
yandex_compute_instance.db["replica"]: Still creating... [10s elapsed]
yandex_compute_instance.db["main"]: Still creating... [10s elapsed]
yandex_compute_instance.db["main"]: Still creating... [20s elapsed]
yandex_compute_instance.db["replica"]: Still creating... [20s elapsed]
yandex_compute_instance.db["replica"]: Still creating... [30s elapsed]
yandex_compute_instance.db["main"]: Still creating... [30s elapsed]
yandex_compute_instance.db["main"]: Still creating... [40s elapsed]
yandex_compute_instance.db["replica"]: Still creating... [40s elapsed]
yandex_compute_instance.db["replica"]: Creation complete after 42s [id=fhm68h094ul1uud6d0d9]
yandex_compute_instance.db["main"]: Creation complete after 49s [id=fhmnik7jplpn05k2oq5m]
yandex_compute_instance.web[1]: Creating...
yandex_compute_instance.web[0]: Creating...
yandex_compute_instance.web[0]: Still creating... [10s elapsed]
yandex_compute_instance.web[1]: Still creating... [10s elapsed]
yandex_compute_instance.web[1]: Still creating... [20s elapsed]
yandex_compute_instance.web[0]: Still creating... [20s elapsed]
yandex_compute_instance.web[1]: Still creating... [30s elapsed]
yandex_compute_instance.web[0]: Still creating... [30s elapsed]
yandex_compute_instance.web[1]: Still creating... [41s elapsed]
yandex_compute_instance.web[0]: Still creating... [41s elapsed]
yandex_compute_instance.web[0]: Creation complete after 42s [id=fhm79bubeb0ja4l21i6h]
yandex_compute_instance.web[1]: Creation complete after 46s [id=fhmjko0urc8gt60sqqvl]
```
Так как я не указывал for_each-vm в какой группе безопастности создавать они создались в дефолтной, в выводе команды yc не будет упоминания security_group_ids но в облаке она будет дефолтной

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc vpc security-group list
+----------------------+---------------------------------+--------------------------------+----------------------+
|          ID          |              NAME               |          DESCRIPTION           |      NETWORK-ID      |
+----------------------+---------------------------------+--------------------------------+----------------------+
| enp2lllhvmq5sr2arrkp | example_dynamic                 |                                | enpkojo6jvahg1nc2bg1 |
| enp5v1tqpi6vv3up307d | default-sg-enpgrsth1ff56jc7prd2 | Default security group for     | enpgrsth1ff56jc7prd2 |
|                      |                                 | network                        |                      |
| enpf82pgfi3l5mt1u53t | default-sg-enpkojo6jvahg1nc2bg1 | Default security group for     | enpkojo6jvahg1nc2bg1 |
|                      |                                 | network                        |                      |
+----------------------+---------------------------------+--------------------------------+----------------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance list
+----------------------+---------+---------------+---------+----------------+-------------+
|          ID          |  NAME   |    ZONE ID    | STATUS  |  EXTERNAL IP   | INTERNAL IP |
+----------------------+---------+---------------+---------+----------------+-------------+
| fhm68h094ul1uud6d0d9 | replica | ru-central1-a | RUNNING | 89.169.152.121 | 10.1.1.14   |
| fhm79bubeb0ja4l21i6h | web-1   | ru-central1-a | RUNNING | 62.84.119.128  | 10.1.1.33   |
| fhmjko0urc8gt60sqqvl | web-2   | ru-central1-a | RUNNING | 62.84.127.196  | 10.1.1.18   |
| fhmnik7jplpn05k2oq5m | main    | ru-central1-a | RUNNING | 89.169.140.244 | 10.1.1.35   |
+----------------------+---------+---------------+---------+----------------+-------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmjko0urc8gt60sqqvl | awk '/security_group_ids:/ {getline; print $2}'
enp2lllhvmq5sr2arrkp
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhm79bubeb0ja4l21i6h | awk '/security_group_ids:/ {getline; print $2}'
enp2lllhvmq5sr2arrkp
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhm68h094ul1uud6d0d9 | awk '/security_group_ids:/ {getline; print $2}'
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmnik7jplpn05k2oq5m | awk '/security_group_ids:/ {getline; print $2}'
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$
```

![image](https://github.com/user-attachments/assets/5cd4a99b-20b3-4a23-86de-1a161facf80b)


Задание 3

```
terraform apply -auto-approve
data.yandex_compute_image.my_image: Reading...
yandex_vpc_network.develop: Refreshing state... [id=enpkojo6jvahg1nc2bg1]
data.yandex_compute_image.my_image: Read complete after 1s [id=fd892vjp5gajiqr0g1b3]
yandex_vpc_subnet.develop: Refreshing state... [id=e9b87c414metl4op1uaa]
yandex_vpc_security_group.example: Refreshing state... [id=enp2lllhvmq5sr2arrkp]
yandex_compute_instance.db["main"]: Refreshing state... [id=fhmnik7jplpn05k2oq5m]
yandex_compute_instance.db["replica"]: Refreshing state... [id=fhm68h094ul1uud6d0d9]
yandex_compute_instance.web[0]: Refreshing state... [id=fhm79bubeb0ja4l21i6h]
yandex_compute_instance.web[1]: Refreshing state... [id=fhmjko0urc8gt60sqqvl]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_disk.data_disks[0] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-0"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_disk.data_disks[1] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-1"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_disk.data_disks[2] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-2"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_instance.storage will be created
  + resource "yandex_compute_instance" "storage" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = "
      + name                      = "storage"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)
....
      + scheduling_policy (known after apply)

      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
    }

Plan: 4 to add, 0 to change, 0 to destroy.
yandex_compute_disk.data_disks[1]: Creating...
yandex_compute_disk.data_disks[2]: Creating...
yandex_compute_disk.data_disks[0]: Creating...
yandex_compute_disk.data_disks[0]: Creation complete after 9s [id=fhmlqj2befbpjk5ih22u]
yandex_compute_disk.data_disks[2]: Still creating... [10s elapsed]
yandex_compute_disk.data_disks[1]: Still creating... [10s elapsed]
yandex_compute_disk.data_disks[2]: Creation complete after 11s [id=fhma6m1csasi6q05vcl9]
yandex_compute_disk.data_disks[1]: Creation complete after 11s [id=fhmnpecakdm6ue4cr0ra]
yandex_compute_instance.storage: Creating...
yandex_compute_instance.storage: Still creating... [10s elapsed]
yandex_compute_instance.storage: Still creating... [20s elapsed]
yandex_compute_instance.storage: Still creating... [30s elapsed]
yandex_compute_instance.storage: Still creating... [40s elapsed]
yandex_compute_instance.storage: Creation complete after 40s [id=fhma6gg2fuqo3oepu0f9]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$
```

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance list
+----------------------+---------+---------------+---------+----------------+-------------+
|          ID          |  NAME   |    ZONE ID    | STATUS  |  EXTERNAL IP   | INTERNAL IP |
+----------------------+---------+---------------+---------+----------------+-------------+
| fhm68h094ul1uud6d0d9 | replica | ru-central1-a | RUNNING | 89.169.152.121 | 10.1.1.14   |
| fhm79bubeb0ja4l21i6h | web-1   | ru-central1-a | RUNNING | 62.84.119.128  | 10.1.1.33   |
| fhma6gg2fuqo3oepu0f9 | storage | ru-central1-a | RUNNING | 84.201.131.92  | 10.1.1.12   |
| fhmjko0urc8gt60sqqvl | web-2   | ru-central1-a | RUNNING | 62.84.127.196  | 10.1.1.18   |
| fhmnik7jplpn05k2oq5m | main    | ru-central1-a | RUNNING | 89.169.140.244 | 10.1.1.35   |
+----------------------+---------+---------------+---------+----------------+-------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute
connect-to-serial-port  filesystem              image                   snapshot
disk                    gpu-cluster             instance                snapshot-schedule
disk-placement-group    host-group              instance-group          ssh
disk-type               host-type               placement-group         zone
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute disk
disk                  disk-placement-group  disk-type
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute disk
add-access-binding     delete                 list-access-bindings   relocate               resize
add-labels             get                    list-operations        remove-access-binding  set-access-bindings
create                 list                   move                   remove-labels          update
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute disk list
+----------------------+-------------+-------------+---------------+--------+----------------------+-----------------+-------------+
|          ID          |    NAME     |    SIZE     |     ZONE      | STATUS |     INSTANCE IDS     | PLACEMENT GROUP | DESCRIPTION |
+----------------------+-------------+-------------+---------------+--------+----------------------+-----------------+-------------+
| fhm1mubktikrse6khi6j |             | 21474836480 | ru-central1-a | READY  | fhmjko0urc8gt60sqqvl |                 |             |
| fhm8bgq6n5h680uiid7r |             |  5368709120 | ru-central1-a | READY  | fhma6gg2fuqo3oepu0f9 |                 |             |
| fhma6m1csasi6q05vcl9 | data-disk-2 |  1073741824 | ru-central1-a | READY  | fhma6gg2fuqo3oepu0f9 |                 |             |
| fhmfd8q0tr4keos2n68v |             | 32212254720 | ru-central1-a | READY  | fhm68h094ul1uud6d0d9 |                 |             |
| fhmk50l43a1f27il68q9 |             | 21474836480 | ru-central1-a | READY  | fhm79bubeb0ja4l21i6h |                 |             |
| fhmlqj2befbpjk5ih22u | data-disk-0 |  1073741824 | ru-central1-a | READY  | fhma6gg2fuqo3oepu0f9 |                 |             |
| fhmnpecakdm6ue4cr0ra | data-disk-1 |  1073741824 | ru-central1-a | READY  | fhma6gg2fuqo3oepu0f9 |                 |             |
| fhmv0f1plboimouoe1d6 |             | 53687091200 | ru-central1-a | READY  | fhmnik7jplpn05k2oq5m |                 |             |
+----------------------+-------------+-------------+---------------+--------+----------------------+-----------------+-------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$
```

Задание 4 

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance list
+----------------------+---------+---------------+---------+----------------+-------------+
|          ID          |  NAME   |    ZONE ID    | STATUS  |  EXTERNAL IP   | INTERNAL IP |
+----------------------+---------+---------------+---------+----------------+-------------+
| fhm0sbnju205g8d87dmj | replica | ru-central1-a | RUNNING | 51.250.75.65   | 10.1.1.13   |
| fhmbhuj141a5a108rqil | web-1   | ru-central1-a | RUNNING | 89.169.128.21  | 10.1.1.20   |
| fhmjcuj0vn2vper9a60d | web-2   | ru-central1-a | RUNNING | 89.169.151.200 | 10.1.1.5    |
| fhms151n3rrhrtl5bdri | main    | ru-central1-a | RUNNING | 51.250.13.175  | 10.1.1.21   |
| fhmt9cu1hss218vebt3j | storage | ru-central1-a | RUNNING | 84.201.130.64  | 10.1.1.8    |
+----------------------+---------+---------------+---------+----------------+-------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhm0sbnju205g8d87dmj --format=json | jq '.fqdn'
"replica.ru-central1.internal"
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmbhuj141a5a108rqil --format=json | jq '.fqdn'
"web-1.ru-central1.internal"
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmjcuj0vn2vper9a60d --format=json | jq '.fqdn'
"web-2.ru-central1.internal"
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhms151n3rrhrtl5bdri --format=json | jq '.fqdn'
"main.ru-central1.internal"
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance get fhmt9cu1hss218vebt3j --format=json | jq '.fqdn'
"storage.ru-central1.internal"
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$
```

Задача 5

```
You can apply this plan to save these new output values to the Terraform state, without changing any real
infrastructure.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

vm_list = [
  [
    {
      "fqdn" = "main.ru-central1.internal"
      "id" = "fhms151n3rrhrtl5bdri"
      "name" = "main"
    },
    {
      "fqdn" = "replica.ru-central1.internal"
      "id" = "fhm0sbnju205g8d87dmj"
      "name" = "replica"
    },
  ],
  [
    {
      "fqdn" = "web-1.ru-central1.internal"
      "id" = "fhmbhuj141a5a108rqil"
      "name" = "web-1"
    },
    {
      "fqdn" = "web-2.ru-central1.internal"
      "id" = "fhmjcuj0vn2vper9a60d"
      "name" = "web-2"
    },
  ],
```

Задача 6

```
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ terraform apply --auto-approve
data.yandex_compute_image.my_image: Reading...
data.yandex_compute_image.my_image: Read complete after 0s [id=fd892vjp5gajiqr0g1b3]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create

Terraform will perform the following actions:

  # local_file.ansible_inventory will be created
  + resource "local_file" "ansible_inventory" {
      + content              = (known after apply)
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./inventory.yaml"
      + id                   = (known after apply)
    }

  # null_resource.ansible_apply will be created
  + resource "null_resource" "ansible_apply" {
      + id = (known after apply)
    }

  # yandex_compute_disk.data_disks[0] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-0"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_disk.data_disks[1] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-1"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_disk.data_disks[2] will be created
  + resource "yandex_compute_disk" "data_disks" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = "b1gs98og2f2h12cvb2pj"
      + id          = (known after apply)
      + name        = "data-disk-2"
      + product_ids = (known after apply)
      + size        = 1
      + status      = (known after apply)
      + type        = "network-ssd"
      + zone        = "ru-central1-a"

      + disk_placement_policy (known after apply)
    }

  # yandex_compute_instance.db["main"] will be created
  + resource "yandex_compute_instance" "db" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = "main"
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
          + "user-data"          = <<-EOT
                #cloud-config
                runcmd:
                  - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
            EOT
        }
      + name                      = "main"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd892vjp5gajiqr0g1b3"
              + name        = "main"
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 50
          + cores         = 4
          + memory        = 8
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.db["replica"] will be created
  + resource "yandex_compute_instance" "db" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = "replica"
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
          + "user-data"          = <<-EOT
                #cloud-config
                runcmd:
                  - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
            EOT
        }
      + name                      = "replica"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd892vjp5gajiqr0g1b3"
              + name        = "replica"
              + size        = 30
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 50
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.storage will be created
  + resource "yandex_compute_instance" "storage" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = "storage"
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys"  = "ubuntu:ssh-rsa 
          + "user-data" = <<-EOT
                #cloud-config
                runcmd:
                  - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
            EOT
        }
      + name                      = "storage"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd892vjp5gajiqr0g1b3"
              + name        = "storage"
              + size        = (known after apply)
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)

      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
      + secondary_disk {
          + auto_delete = false
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = "READ_WRITE"
        }
    }

  # yandex_compute_instance.web[0] will be created
  + resource "yandex_compute_instance" "web" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = "web-1"
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
          + "user-data"          = <<-EOT
                #cloud-config
                runcmd:
                  - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
            EOT
        }
      + name                      = "web-1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd892vjp5gajiqr0g1b3"
              + name        = "web-1"
              + size        = 20
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.web[1] will be created
  + resource "yandex_compute_instance" "web" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hostname                  = "web-2"
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "serial-port-enable" = "1"
          + "ssh-keys"           = "ubuntu:ssh-rsa 
          + "user-data"          = <<-EOT
                #cloud-config
                runcmd:
                  - echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
            EOT
        }
      + name                      = "web-2"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd892vjp5gajiqr0g1b3"
              + name        = "web-2"
              + size        = 20
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)
    }

  # yandex_vpc_network.develop will be created
  + resource "yandex_vpc_network" "develop" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "develop"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_security_group.example will be created
  + resource "yandex_vpc_security_group" "example" {
      + created_at = (known after apply)
      + folder_id  = "b1gs98og2f2h12cvb2pj"
      + id         = (known after apply)
      + labels     = (known after apply)
      + name       = "example_dynamic"
      + network_id = (known after apply)
      + status     = (known after apply)

      + egress {
          + description       = "разрешить весь исходящий трафик"
          + from_port         = 0
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = -1
          + protocol          = "TCP"
          + to_port           = 65365
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }

      + ingress {
          + description       = "разрешить входящий  http"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 80
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
      + ingress {
          + description       = "разрешить входящий https"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 443
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
      + ingress {
          + description       = "разрешить входящий ssh"
          + from_port         = -1
          + id                = (known after apply)
          + labels            = (known after apply)
          + port              = 22
          + protocol          = "TCP"
          + to_port           = -1
          + v4_cidr_blocks    = [
              + "0.0.0.0/0",
            ]
          + v6_cidr_blocks    = []
            # (2 unchanged attributes hidden)
        }
    }

  # yandex_vpc_subnet.develop will be created
  + resource "yandex_vpc_subnet" "develop" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "develop"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.1.1.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 13 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + vm_list = [
      + [
          + {
              + fqdn = (known after apply)
              + id   = (known after apply)
              + name = "main"
            },
          + {
              + fqdn = (known after apply)
              + id   = (known after apply)
              + name = "replica"
            },
        ],
      + [
          + {
              + fqdn = (known after apply)
              + id   = (known after apply)
              + name = "web-1"
            },
          + {
              + fqdn = (known after apply)
              + id   = (known after apply)
              + name = "web-2"
            },
        ],
    ]
yandex_vpc_network.develop: Creating...
yandex_compute_disk.data_disks[1]: Creating...
yandex_compute_disk.data_disks[0]: Creating...
yandex_compute_disk.data_disks[2]: Creating...
yandex_vpc_network.develop: Creation complete after 3s [id=enpin2nopi2cjn3vran4]
yandex_vpc_subnet.develop: Creating...
yandex_vpc_security_group.example: Creating...
yandex_vpc_subnet.develop: Creation complete after 1s [id=e9bimlvmfv8fvt6o14f4]
yandex_vpc_security_group.example: Creation complete after 2s [id=enphjnec9gl1bn1v28ec]
yandex_compute_instance.db["replica"]: Creating...
yandex_compute_instance.db["main"]: Creating...
yandex_compute_disk.data_disks[1]: Creation complete after 10s [id=fhm51ftq6uel3f50ec9j]
yandex_compute_disk.data_disks[0]: Creation complete after 10s [id=fhmkht68c7ps61eo9kni]
yandex_compute_disk.data_disks[2]: Creation complete after 10s [id=fhmk6th5pmrsc6g6oeho]
yandex_compute_instance.db["replica"]: Still creating... [10s elapsed]
yandex_compute_instance.db["main"]: Still creating... [10s elapsed]
yandex_compute_instance.db["replica"]: Creation complete after 44s [id=fhmhg3pa2kreh2lbi3eh]
yandex_compute_instance.db["main"]: Creation complete after 54s [id=fhmabars6qdpreb2jn1n]
yandex_compute_instance.web[1]: Creating...
yandex_compute_instance.web[0]: Creating...
yandex_compute_instance.web[0]: Still creating... [10s elapsed]
yandex_compute_instance.web[1]: Still creating... [10s elapsed]
yandex_compute_instance.web[1]: Creation complete after 45s [id=fhmb5rs5ghkj8bbfpoor]
yandex_compute_instance.web[0]: Creation complete after 58s [id=fhm5gjfj2rr7i5j6dqhq]
yandex_compute_instance.storage: Creating...
yandex_compute_instance.storage: Still creating... [10s elapsed]
yandex_compute_instance.storage: Creation complete after 37s [id=fhmbrs2mo6d1s62rcor6]
local_file.ansible_inventory: Creating...
local_file.ansible_inventory: Creation complete after 0s [id=28728aee3bcb6f2e0a0842230e4d0de9c0e22eda]
null_resource.ansible_apply: Creating...
null_resource.ansible_apply: Provisioning with 'local-exec'...
null_resource.ansible_apply (local-exec): Executing: ["/bin/sh" "-c" "      ansible-playbook -i ./inventory.yaml playbook.yml\n"]
null_resource.ansible_apply (local-exec): [WARNING]: Found both group and host with same name: storage

null_resource.ansible_apply (local-exec): PLAY [Configure web servers] ***************************************************

null_resource.ansible_apply (local-exec): TASK [Gathering Facts] *********************************************************
null_resource.ansible_apply (local-exec): ok: [web-2]
null_resource.ansible_apply (local-exec): ok: [web-1]

null_resource.ansible_apply (local-exec): TASK [Ensure package is installed] *********************************************
null_resource.ansible_apply: Still creating... [10s elapsed]
null_resource.ansible_apply: Still creating... [20s elapsed]
null_resource.ansible_apply: Still creating... [30s elapsed]
null_resource.ansible_apply: Still creating... [40s elapsed]
null_resource.ansible_apply: Still creating... [50s elapsed]
null_resource.ansible_apply: Still creating... [1m0s elapsed]
null_resource.ansible_apply: Still creating... [1m10s elapsed]
null_resource.ansible_apply: Still creating... [1m20s elapsed]
null_resource.ansible_apply: Still creating... [1m30s elapsed]
null_resource.ansible_apply: Still creating... [1m40s elapsed]
null_resource.ansible_apply: Still creating... [1m50s elapsed]
null_resource.ansible_apply: Still creating... [2m0s elapsed]
null_resource.ansible_apply: Still creating... [2m10s elapsed]
null_resource.ansible_apply: Still creating... [2m20s elapsed]
null_resource.ansible_apply (local-exec): changed: [web-1]
null_resource.ansible_apply (local-exec): changed: [web-2]

null_resource.ansible_apply (local-exec): TASK [Install required packages] ***********************************************
null_resource.ansible_apply: Still creating... [2m30s elapsed]
null_resource.ansible_apply (local-exec): changed: [web-1]
null_resource.ansible_apply (local-exec): changed: [web-2]

null_resource.ansible_apply (local-exec): PLAY [Configure databases] *****************************************************

null_resource.ansible_apply (local-exec): TASK [Gathering Facts] *********************************************************
null_resource.ansible_apply (local-exec): ok: [main]
null_resource.ansible_apply (local-exec): ok: [replica]

null_resource.ansible_apply (local-exec): TASK [Ensure package is installed] *********************************************
null_resource.ansible_apply: Still creating... [2m40s elapsed]
null_resource.ansible_apply: Still creating... [2m50s elapsed]
null_resource.ansible_apply: Still creating... [3m0s elapsed]
null_resource.ansible_apply: Still creating... [3m10s elapsed]
null_resource.ansible_apply: Still creating... [3m20s elapsed]
null_resource.ansible_apply: Still creating... [3m30s elapsed]
null_resource.ansible_apply: Still creating... [3m40s elapsed]
null_resource.ansible_apply: Still creating... [3m50s elapsed]
null_resource.ansible_apply: Still creating... [4m0s elapsed]
null_resource.ansible_apply: Still creating... [4m10s elapsed]
null_resource.ansible_apply: Still creating... [4m20s elapsed]
null_resource.ansible_apply: Still creating... [4m30s elapsed]
null_resource.ansible_apply: Still creating... [4m40s elapsed]
null_resource.ansible_apply (local-exec): changed: [replica]
null_resource.ansible_apply (local-exec): changed: [main]

null_resource.ansible_apply (local-exec): TASK [Install required packages] ***********************************************
null_resource.ansible_apply: Still creating... [4m50s elapsed]
null_resource.ansible_apply: Still creating... [5m0s elapsed]
null_resource.ansible_apply: Still creating... [5m10s elapsed]
null_resource.ansible_apply: Still creating... [5m20s elapsed]
null_resource.ansible_apply: Still creating... [5m30s elapsed]
null_resource.ansible_apply: Still creating... [5m40s elapsed]
null_resource.ansible_apply (local-exec): changed: [replica]
null_resource.ansible_apply (local-exec): changed: [main]

null_resource.ansible_apply (local-exec): PLAY [Configure storage] *******************************************************

null_resource.ansible_apply (local-exec): TASK [Gathering Facts] *********************************************************
null_resource.ansible_apply (local-exec): ok: [storage]

null_resource.ansible_apply (local-exec): TASK [Ensure package is installed] *********************************************
null_resource.ansible_apply: Still creating... [5m50s elapsed]
null_resource.ansible_apply: Still creating... [6m0s elapsed]
null_resource.ansible_apply: Still creating... [6m10s elapsed]
null_resource.ansible_apply: Still creating... [6m20s elapsed]
null_resource.ansible_apply: Still creating... [6m30s elapsed]
null_resource.ansible_apply: Still creating... [6m40s elapsed]
null_resource.ansible_apply: Still creating... [6m50s elapsed]
null_resource.ansible_apply: Still creating... [7m0s elapsed]
null_resource.ansible_apply: Still creating... [7m10s elapsed]
null_resource.ansible_apply: Still creating... [7m20s elapsed]
null_resource.ansible_apply: Still creating... [7m30s elapsed]
null_resource.ansible_apply: Still creating... [7m40s elapsed]
null_resource.ansible_apply: Still creating... [7m50s elapsed]
null_resource.ansible_apply (local-exec): changed: [storage]

null_resource.ansible_apply (local-exec): TASK [Install required packages] ***********************************************
null_resource.ansible_apply: Still creating... [8m0s elapsed]
null_resource.ansible_apply (local-exec): changed: [storage]

null_resource.ansible_apply (local-exec): PLAY RECAP *********************************************************************
null_resource.ansible_apply (local-exec): main                       : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
null_resource.ansible_apply (local-exec): replica                    : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
null_resource.ansible_apply (local-exec): storage                    : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
null_resource.ansible_apply (local-exec): web-1                      : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
null_resource.ansible_apply (local-exec): web-2                      : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

null_resource.ansible_apply: Creation complete after 8m6s [id=5075412649127897160]

Apply complete! Resources: 13 added, 0 changed, 0 destroyed.

Outputs:

vm_list = [
  [
    {
      "fqdn" = "main.ru-central1.internal"
      "id" = "fhmabars6qdpreb2jn1n"
      "name" = "main"
    },
    {
      "fqdn" = "replica.ru-central1.internal"
      "id" = "fhmhg3pa2kreh2lbi3eh"
      "name" = "replica"
    },
  ],
  [
    {
      "fqdn" = "web-1.ru-central1.internal"
      "id" = "fhm5gjfj2rr7i5j6dqhq"
      "name" = "web-1"
    },
    {
      "fqdn" = "web-2.ru-central1.internal"
      "id" = "fhmb5rs5ghkj8bbfpoor"
      "name" = "web-2"
    },
  ],
]
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ yc compute instance list
+----------------------+---------+---------------+---------+----------------+-------------+
|          ID          |  NAME   |    ZONE ID    | STATUS  |  EXTERNAL IP   | INTERNAL IP |
+----------------------+---------+---------------+---------+----------------+-------------+
| fhm5gjfj2rr7i5j6dqhq | web-1   | ru-central1-a | RUNNING | 89.169.137.214 | 10.1.1.21   |
| fhmabars6qdpreb2jn1n | main    | ru-central1-a | RUNNING | 62.84.125.49   | 10.1.1.23   |
| fhmb5rs5ghkj8bbfpoor | web-2   | ru-central1-a | RUNNING | 89.169.147.136 | 10.1.1.37   |
| fhmbrs2mo6d1s62rcor6 | storage | ru-central1-a | RUNNING | 51.250.6.242   | 10.1.1.31   |
| fhmhg3pa2kreh2lbi3eh | replica | ru-central1-a | RUNNING | 51.250.91.194  | 10.1.1.22   |
+----------------------+---------+---------------+---------+----------------+-------------+

sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ ssh ubuntu@89.169.137.214 "systemctl status nginx"
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2024-09-17 21:30:55 UTC; 9min ago
       Docs: man:nginx(8)
   Main PID: 15563 (nginx)
      Tasks: 3 (limit: 2292)
     Memory: 5.8M
     CGroup: /system.slice/nginx.service
             ├─15563 nginx: master process /usr/sbin/nginx -g daemon on; master_process on;
             ├─15564 nginx: worker process
             └─15565 nginx: worker process

Sep 17 21:30:55 web-1 systemd[1]: Starting A high performance web server and a reverse proxy server...
Sep 17 21:30:55 web-1 systemd[1]: Started A high performance web server and a reverse proxy server.
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ ssh ubuntu@51.250.91.194 "systemctl status mysql"
● mysql.service - MySQL Community Server
     Loaded: loaded (/lib/systemd/system/mysql.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2024-09-17 21:33:58 UTC; 6min ago
   Main PID: 15936 (mysqld)
     Status: "Server is operational"
      Tasks: 37 (limit: 4630)
     Memory: 365.2M
     CGroup: /system.slice/mysql.service
             └─15936 /usr/sbin/mysqld

Sep 17 21:33:56 replica systemd[1]: Starting MySQL Community Server...
Sep 17 21:33:58 replica systemd[1]: Started MySQL Community Server.
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$ ssh ubuntu@51.250.6.242 "systemctl status ntp"
● ntp.service - Network Time Service
     Loaded: loaded (/lib/systemd/system/ntp.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2024-09-17 21:36:28 UTC; 4min 17s ago
       Docs: man:ntpd(8)
   Main PID: 15582 (ntpd)
      Tasks: 2 (limit: 2292)
     Memory: 1.4M
     CGroup: /system.slice/ntp.service
             └─15582 /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 109:115

Sep 17 21:36:32 storage ntpd[15582]: Soliciting pool server 188.225.9.167
Sep 17 21:36:32 storage ntpd[15582]: Soliciting pool server 162.159.200.123
Sep 17 21:36:33 storage ntpd[15582]: Soliciting pool server 85.21.78.23
Sep 17 21:36:33 storage ntpd[15582]: Soliciting pool server 94.131.113.113
Sep 17 21:36:33 storage ntpd[15582]: Soliciting pool server 185.125.190.58
Sep 17 21:36:34 storage ntpd[15582]: Soliciting pool server 91.189.91.157
Sep 17 21:36:34 storage ntpd[15582]: Soliciting pool server 213.33.141.134
Sep 17 21:36:35 storage ntpd[15582]: Soliciting pool server 185.125.190.56
Sep 17 21:36:35 storage ntpd[15582]: Soliciting pool server 2001:1bb0:e000:1e::85f
Sep 17 21:36:36 storage ntpd[15582]: Soliciting pool server 185.125.190.57
sypchik@Mirror:/mnt/c/Users/Sypchik/Desktop/home work/terraform/ter-homeworks/03/src$
```

Задача 7
