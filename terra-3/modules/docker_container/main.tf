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
}

### Working second sample:

# data "docker_image" "image" {
#   for_each = var.containers
#   name = each.value["image"]
# }

# resource "docker_container" "container" {
#   for_each = data.docker_image.image

#   image = each.value.id
#   name  = each.key
#   ports {
#      internal = var.containers[each.key].ports.internal
#      external = var.containers[each.key].ports.external
#   }
#   command = var.containers[each.key].command
# }