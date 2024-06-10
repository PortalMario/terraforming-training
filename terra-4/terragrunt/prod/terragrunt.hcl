include "root" {
  path = find_in_parent_folders()
  merge_strategy = "deep"
}

inputs = {
    containers = {
        "prod-website" = {
            image = "nginx:latest"
            ports = {
                internal = 80
                external = 8888
            }
        }
    }
}
