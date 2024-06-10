containers = {
    "test-website" = {
        image = "ngnix:latest"
        ports = {
            internal = 80
            external = 8080
        }
    }
    "prod-website" = {
        image = "ngnix:latest"
        ports = {
            internal = 80
            external = 80
        }
    }
}
