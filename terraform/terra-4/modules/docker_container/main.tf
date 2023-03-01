data "docker_image" "image" {
  for_each = var.containers
  name = each.value["image"]
}

resource "docker_container" "container" {
  for_each = var.containers

  image = data.docker_image.image[each.key].id
  name  = each.key
  ports {
     internal = each.value.ports["internal"]
     external = each.value.ports["external"]
  }
  command = each.value["command"]

  volumes {
    volume_name    = each.value.volume["name"]
    read_only      = each.value.volume["read_only"]
    container_path = each.value.volume["container_path"]
  }

}


/* dynamic "disk" {
  for_each  = each.value["volume"]

  content {
    volume_name = volume.value["name"]
    read_only   = volume.value["read_only"]
  }
} */