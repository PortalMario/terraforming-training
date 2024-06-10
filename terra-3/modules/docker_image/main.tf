locals {
  container_images = toset(flatten([
    for containers, containers_values in var.containers :  [
      containers_values.image
    ]
  ]))
}

resource "docker_image" "image" {
  for_each = local.container_images

  name         = each.key
  keep_locally = false
}
