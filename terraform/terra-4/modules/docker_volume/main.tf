resource "docker_volume" "volume" {
  for_each = var.volumes

  name     = each.value
}