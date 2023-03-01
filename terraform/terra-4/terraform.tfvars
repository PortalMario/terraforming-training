volumes = [
    "docker-master-volume",
    "docker-test" 
]

containers = {
    "test-website" = {
        image = "nginx:latest"
        ports = {
            internal = 80
            external = 8080
        }
        volume  = {
            name           = "docker-master-volume"
            read_only      = true
            container_path = "/data"
        }
    }
    "prod-website" = {
        image = "nginx:latest"
        ports = {
            internal = 80
            external = 80
        }
        volume  = {
            name           = "docker-master-volume"
            read_only      = true
            container_path = "/data"
        }
    }
    "sleeper-container" = {
        image      = "ubuntu:latest"
        ports      = {
            internal = 80
            external = 8888
        }
        command    = ["sleep", "infinity"]
        volume  = {
            name           = "docker-master-volume"
            read_only      = true
            container_path = "/data"
        }
    }
}

# Nested Loop
/*         volumes    = [
            {
                name      = "docker-master-volume"
                read_only = true
            }
        ] */