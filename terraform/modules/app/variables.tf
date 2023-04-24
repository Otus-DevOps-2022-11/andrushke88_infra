variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable subnet_id {
  description = "Subnet for modules"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable private_key_path {
  description = "Path to the public key used for ssh access"
}
variable dbip {
  description = "Database IP"
}
variable name {
  description = "Instance name"
  type        = string
  default     = "reddit-app"
}
