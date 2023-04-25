variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable subnet_id {
  description = "Subnet for modules"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable name {
  description = "Instance name"
  type        = string
  default     = "reddit-db"
}
variable private_key_path {
  description = "Path to the public key used for ssh access"
}
