variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}
variable region {
  description = "Region"
  default     = "ru-central1"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "Subnet"
}
variable service_account_key_file {
  description = "key .json"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable counter {
  description = "Number of instances"
  default     = 1
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable dbip {
  description = "Database ip"
  default="0.0.0.0"
}
variable enable_provision {
  description = "Provision t/f"
  default     = true
}

variable app_network_name {
  description= "VPC network name"
  default = "app-network"
}
variable app_subnet_name {
  description = "VPC subnet name"
  default = "app-subnet"
}
