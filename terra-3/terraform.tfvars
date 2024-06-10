containers = {
    "test-website" = {
        image = "nginx:latest"
        ports = {
            internal = 80
            external = 8080
        }
    }
    "prod-website" = {
        image = "nginx:latest"
        ports = {
            internal = 80
            external = 80
        }
    }
    "sleeper-container" = {
        image      = "ubuntu:latest"
        ports      = {
            internal = 80
            external = 8888
        }
        command    = ["sleep", "infinity"]
    }
}
