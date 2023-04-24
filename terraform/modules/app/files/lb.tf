resource "yandex_lb_target_group" "reddit_group_balancer" {
  name      = "reddit-balncer-group"
  region_id = var.region
  dynamic "target" {
    for_each = yandex_compute_instance.app.*.network_interface.0.ip_address
    content {
      subnet_id = var.subnet_id
      address   = target.value
    }
  }
}

resource "yandex_lb_network_load_balancer" "balancer" {
  name = "reddit-app-balancer"

  listener {
    name        = "sniffer"
    port        = 80
    target_port = 9292
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.reddit_group_balancer.id

    healthcheck {
      name = "http"
      http_options {
        port = 9292
        path = "/"
      }
    }
  }
}
