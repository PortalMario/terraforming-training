terraform {
  source = "../../terraform/"
}

inputs = {
    containers = {
        "sleeper-container" = {
            image      = "ubuntu:latest"
            ports      = {
                internal = 80
                external = 8888
            }
            command    = ["sleep", "infinity"]
        }
    }
}