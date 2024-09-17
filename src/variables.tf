###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "platform_id" {
  type        = string
  description = "Platform ID"
}

variable "vm_user" {
  type        = string
  description = "User VM"
}

variable "image_family" {
  type        = string
  description = "ISO Img"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "ppkyc" {
  type        = string
  description = "Path to key"
}

variable "vms_ssh_root_key" {
  type        = string
  description = "SSH root key for the VM"
}

variable "sg_name" {
  type        = string
  description = "Sec Group Name"
}

variable "web_cores" {
  type        = string
  description = "Cores"
}

variable "web_memory" {
  type        = string
  description = "Mem"
}

variable "web_fract" {
  type        = string
  description = "Fraction"
}

variable "web_ds" {
  type        = string
  description = "Disk size"
}

variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    core_fraction = number
    disk_volume = number
  }))
}

variable "stor_name" {
  type        = string
  description = "Name"
}

variable "disk_type" {
  type        = string
  description = "HDD or SSD"
}

variable "stor_size" {
  type        = number
  description = "Disk size"
}

variable "web_name" {
  type        = string
  description = "Count VM Name"
}

variable "dd_name" {
  type        = string
  description = "Count VM Name"
}