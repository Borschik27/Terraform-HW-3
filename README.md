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

