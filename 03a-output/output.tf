output "image_ids" {
  value = docker_container.nginx.container_id
}

# output "image_ids" {
#   value = [ for container, container_values in docker_container.nginx : container_values.id]
# }