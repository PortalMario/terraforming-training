module "docker_container" {
    source     = "./modules/docker_container"
    containers = var.containers
    depends_on = [
      module.docker_image
    ]
}

module "docker_image" {
  source       = "./modules/docker_image"
  containers   = var.containers
}




/* output "debug_1" {
  value = module.docker_image
} */

/* output "debug_2" {
  value = module.docker_container
} */
