provider "yandex" {
  version                  = "0.35"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  service_account_key_file = var.service_account_key_file
}

resource "yandex_storage_bucket" "test100500" {
  access_key    = "accesskey"
  secret_key    = "secretkey"
  bucket        = "epicbucket1"
  force_destroy = true
}

module "app" {
  source           = "../modules/app"
  name             = "reddit-app-stage"
  public_key_path  = var.public_key_path
  app_disk_image   = "appdiskimagename"
  subnet_id        = var.subnet_id
  private_key_path = var.private_key_path
  dbip             = module.db.external_ip_address_db
}

module "db" {
  source           = "../modules/db"
  name             = "reddit-db-stage"
  public_key_path  = var.public_key_path
  db_disk_image    = "dbdiskimagename"
  private_key_path = var.private_key_path
  subnet_id        = var.subnet_id
}
