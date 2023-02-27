resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  for_each = var.containers

  image = docker_image.nginx.image_id
  name  = each.key
  ports {
    internal = each.value.ports["internal"]
    external = each.value.ports["external"]
  }
}
