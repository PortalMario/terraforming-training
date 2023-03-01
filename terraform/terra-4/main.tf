module "docker_container" {
    source     = "./modules/docker_container"
    containers = var.containers
    depends_on = [
      module.docker_image,
      module.docker_volume
    ]
}

module "docker_image" {
  source       = "./modules/docker_image"
  containers   = var.containers
}

module "docker_volume" {
  source       = "./modules/docker_volume"
  volumes      = var.volumes
}



/* output "debug_1" {
  value = module.docker_image
} */

/* output "debug_2" {
  value = module.docker_container
} */
